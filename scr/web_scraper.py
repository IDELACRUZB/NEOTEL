import time
import requests
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.action_chains import ActionChains
from selenium.common.exceptions import NoSuchElementException, UnexpectedAlertPresentException
from selenium.webdriver.common.alert import Alert
from selenium.webdriver.chrome.service import Service
from PIL import Image
from io import BytesIO
import pyautogui
import os
import glob
import shutil
import datetime
import random
import subprocess
import string
import re
#para enviar email
import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

class descargaReportes():
    def __init__(self):
        self.directoryPath = os.getcwd()
        self.defaultPathDownloads = self.directoryPath + r'\temp'
        self.options = webdriver.ChromeOptions()
        self.options.add_experimental_option("prefs", {
            "download.default_directory": self.defaultPathDownloads,
            "download.prompt_for_download": False,
            "download.directory_upgrade": True,
            "safebrowsing.enabled": True
        })

        # Para Ignorar los errores de certificado SSL (La conexion no es privada)
        self.options.add_argument("--ignore-certificate-errors")
        #self.pathDriver = "driver/chromedriver.exe"
        self.url = "http://192.168.50.16/ECRM/"
        #self.service = Service(self.pathDriver)
        self.driver = webdriver.Chrome(options=self.options)
        self.driver.maximize_window()

    def reiniciar(self):
        self.__init__()
    
    def login(self):
        self.driver.get(self.url)
        time.sleep(1)

    def iniciarSesion(self, username, password):
        self.driver.switch_to.frame('srcMain')

        iniciarSesion = self.driver.find_element(By.ID, "txtUsuario")
        actions = ActionChains(self.driver)
        actions.move_to_element(iniciarSesion)
        actions.click()
        actions.send_keys(username)
        actions.perform()
        time.sleep(1)

        ingresarPass = self.driver.find_element(By.ID, "txtClave")
        actions.move_to_element(ingresarPass)
        actions.click()
        actions.send_keys(password)
        actions.perform()
        time.sleep(1)
        
        sigIn = self.driver.find_element(By.CSS_SELECTOR, '[id="NeoIngresarButton1"]')
        sigIn.click()
        self.driver.switch_to.default_content()
        time.sleep(5)


    
    def validaInicioSesion(self):
        wait = WebDriverWait(self.driver, 60)

        self.frame_scrTop = wait.until(EC.presence_of_element_located((By.ID, 'srcTop')))
        
        if self.frame_scrTop:
            return True
        else:
            return False

    
    def cerrarSesion(self):
        self.driver.switch_to.frame(self.frame_scrTop)
        logoImagen = self.driver.find_element(By.CSS_SELECTOR, '[id="cmdSalir"]')
        logoImagen.click()
        time.sleep(1)

        self.driver.switch_to.default_content()
        self.driver.switch_to.frame('srcMain')

        cerrarSesion = self.driver.find_element(By.CSS_SELECTOR, '[class="confirm"]')
        cerrarSesion.click()
        time.sleep(1)

    def cantidadXLS(self):
        ruta_carpeta = self.defaultPathDownloads
        extension = '*.xls'
        patron_busqueda = os.path.join(ruta_carpeta, extension)
        archivos = glob.glob(patron_busqueda)
        cantidad_archivos = len(archivos)
        return cantidad_archivos

    def generar_reporte(self, code_campa, periodo):
        wait = WebDriverWait(self.driver, 60)

        self.driver.switch_to.frame(self.frame_scrTop)

        crm = self.driver.find_element(By.CSS_SELECTOR, '[id="cboCRM"]')
        crm.click()
        time.sleep(1)
        reporte = self.driver.find_element(By.XPATH, f"//option[@value='{code_campa}']")# and contains(text(), '141 - SKBERGE - CSM - PEUGEOT')]")
        reporte.click()
        time.sleep(1)

        self.driver.switch_to.default_content()

        self.driver.switch_to.frame('srcMain')
        informes_estadisticas = self.driver.find_element(By.XPATH, '//td/div[text()="Informes & estadísticas"]')
        informes_estadisticas.click()
        time.sleep(1)

        reportes = self.driver.find_element(By.XPATH, '//tr[@id="NeoWebMenu1WebMenu1_8_1"]/td/div[text()="Reportes"]')
        reportes.click()
        time.sleep(1)

        otro = self.driver.find_element(By.XPATH, '//tr[contains(@id, "NeoWebMenu1WebMenu1_8")]/td/div[text()="Otro"]')
        otro.click()
        time.sleep(1)

        reporte_cierre_actualizado = self.driver.find_element(By.XPATH, '//tr/td/div[text()="REPORTE CIERRE - ACTUALIZADO"]')
        reporte_cierre_actualizado.click()
        time.sleep(5)

        iframe = self.driver.find_element(By.XPATH, f"//iframe[contains(@id, 'iframe_tabs-') and contains(@src, 'Reportes_Custom')]")
        self.driver.switch_to.frame(iframe)

        control_combocheck = self.driver.find_element(By.CSS_SELECTOR, '[id="BasebtnNS"]')
        control_combocheck.click()
        time.sleep(1)

        texto_deseado = "BD" + periodo
        elementos = self.driver.find_elements(By.XPATH, f"//div/input[@type='checkbox' and contains(@value, '{texto_deseado}')]")
        for elemento in elementos:
            elemento.click()
            time.sleep(1)
        
        control_combocheck = self.driver.find_element(By.CSS_SELECTOR, '[id="BaseED"]')
        control_combocheck.click()
        time.sleep(1)

        self.cantidadExcelinicial = self.cantidadXLS()

        ejecutar = self.driver.find_element(By.CSS_SELECTOR, '[id="btnEjecutar"]')
        ejecutar.click()
        
        self.cantidadExcelFinal = self.cantidadExcelinicial
        while self.cantidadExcelFinal == self.cantidadExcelinicial:
            time.sleep(1)
            self.cantidadExcelFinal = self.cantidadXLS()
        else:
            pass

        time.sleep(1)
        self.driver.switch_to.default_content()
        time.sleep(1)
        self.driver.switch_to.default_content()
        time.sleep(1)

    # Funcion que reubicará las descargas en sus respectivas carpetas
    def renombrarReubicar(self, nuevoNombre, carpetaDestino):
        # ruta_descargas = r"C:\Users\Usuario\Documents\terceriza\Robot\descargasPython\descargaRobotin"
        ruta_descargas = self.directoryPath + r'/temp'
        archivos_descargados = sorted(
            glob.glob(os.path.join(ruta_descargas, '*')), key=os.path.getmtime, reverse=True
        )
        # Comprobar si hay archivos descargados
        if len(archivos_descargados) > 0:
            ultimo_archivo = archivos_descargados[0]
            # Cambiar el nombre del archivo --1er argumento de la funcion
            nuevo_nombre = f'{nuevoNombre}.xls'
            carpeta_destino = carpetaDestino
            # Comprobar si la carpeta de destino existe, si no, crearla
            if not os.path.exists(carpeta_destino):
                os.makedirs(carpeta_destino)
            # Ruta completa del archivo de destino
            ruta_destino = os.path.join(carpeta_destino, nuevo_nombre)
            # Mover el archivo a la carpeta de destino con el nuevo nombre
            shutil.move(ultimo_archivo, ruta_destino)

    # Funcion que crea el nombre del reporte
    def nombreReporte(self, name, finicio, ffin, fechaD0 = True):
        if fechaD0:
            fechaHora = datetime.datetime.now()
            fecha = fechaHora.strftime("%Y%m%d_%H%M%S")
            aleatorio = str(random.randint(100, 999))
            nameFile = name + fecha + '_' + aleatorio
        else:
            if ffin == None:
                ffin = finicio
            else:
                pass
            h = datetime.datetime.now()
            hora = h.strftime('%H%M%S')
            fechan = datetime.datetime.strptime(ffin, '%Y-%m-%d')
            fechan = fechan + datetime.timedelta(days=1)
            fecha = fechan.strftime("%Y%m%d_")
            aleatorio = str(random.randint(100, 999))
            nameFile = name + fecha + hora + '_' + aleatorio
        
        return nameFile
        
    def gameOver(self):
        self.driver.quit()


