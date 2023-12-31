-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.27-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla bd_skberge_reportes.141_skberge_csm_peugeot
CREATE TABLE IF NOT EXISTS `141_skberge_csm_peugeot` (
  `base` varchar(255) DEFAULT NULL,
  `idcarga` varchar(255) NOT NULL,
  `rutpropietario` varchar(255) DEFAULT NULL,
  `fecha_entrega_vehiculo` varchar(255) DEFAULT NULL,
  `concesionario` varchar(255) DEFAULT NULL,
  `vinvehiculo` varchar(255) DEFAULT NULL,
  `marcasingle` varchar(255) DEFAULT NULL,
  `tipo_evento` varchar(255) DEFAULT NULL,
  `modelo_homologado` varchar(255) DEFAULT NULL,
  `nombre_propietario` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `validacion_telefono_1` varchar(255) DEFAULT NULL,
  `telefono_2` varchar(255) DEFAULT NULL,
  `validacion_telefono_2` varchar(255) DEFAULT NULL,
  `telefono_3` varchar(255) DEFAULT NULL,
  `validacion_telefono_3` varchar(255) DEFAULT NULL,
  `emailpropietario` varchar(255) DEFAULT NULL,
  `patente` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `nombrejecutivo` varchar(255) DEFAULT NULL,
  `fechagestion` varchar(255) DEFAULT NULL,
  `gestor` varchar(255) DEFAULT NULL,
  `respuesta` varchar(255) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `tipogestion` varchar(255) DEFAULT NULL,
  `telefono1` varchar(255) DEFAULT NULL,
  `duracionllamada` varchar(255) DEFAULT NULL,
  `p1_usted_es_propietario_del_vehicul` varchar(255) DEFAULT NULL,
  `p2_usted_llevo_el_vehiculo_al_ultim` varchar(255) DEFAULT NULL,
  `p3_visitaria_este_concesionario_nue` varchar(255) DEFAULT NULL,
  `p4_podria_calificar_su_nivel_de_sat` varchar(255) DEFAULT NULL,
  `p5_que_tan_probable_es_que_nos_reco` varchar(255) DEFAULT NULL,
  `p6_asimismo_queremos_comentarle_que` text DEFAULT NULL,
  `p7_por_favor_indiquenos_el_motivo_p` text DEFAULT NULL,
  `p8_para_finalizar_sr_a_apellido_del` text DEFAULT NULL,
  `autorizacion_de_datos` varchar(255) DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `nombres_y_apellidos` varchar(255) DEFAULT NULL,
  `tipo_de_documento` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcarga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bd_skberge_reportes.176_skberge_encuestas_kacs
CREATE TABLE IF NOT EXISTS `176_skberge_encuestas_kacs` (
  `base` varchar(255) DEFAULT NULL,
  `idcarga` varchar(255) NOT NULL,
  `rutpropietario` varchar(255) DEFAULT NULL,
  `concesionario` varchar(255) DEFAULT NULL,
  `vinvehiculo` varchar(255) DEFAULT NULL,
  `marcasingle` varchar(255) DEFAULT NULL,
  `tipo_evento` varchar(255) DEFAULT NULL,
  `modelo_homologado` varchar(255) DEFAULT NULL,
  `nombre_propietario` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `validacion_telefono_1` varchar(255) DEFAULT NULL,
  `telefono_2` varchar(255) DEFAULT NULL,
  `validacion_telefono_2` varchar(255) DEFAULT NULL,
  `telefono_3` varchar(255) DEFAULT NULL,
  `validacion_telefono_3` varchar(255) DEFAULT NULL,
  `emailpropietario` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `fechagestion` varchar(255) DEFAULT NULL,
  `gestor` varchar(255) DEFAULT NULL,
  `respuesta` varchar(255) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `tipogestion` varchar(255) DEFAULT NULL,
  `telefono1` varchar(255) DEFAULT NULL,
  `duracionllamada` varchar(255) DEFAULT NULL,
  `p1_es_su_vehiculo_de_uso_privado_o_` text DEFAULT NULL,
  `p2_usted_fue_la_persona_que_dejo_y_` text DEFAULT NULL,
  `p3_cual_es_el_kilometraje_de_su_veh` text DEFAULT NULL,
  `p5_cual_ha_sido_el_tipo_de_servicio` text DEFAULT NULL,
  `p8_como_programo_su_ultimo_servicio` text DEFAULT NULL,
  `p9_a_la_facilidad_para_agendar_una_` text DEFAULT NULL,
  `p9_b_el_tiempo_que_tomo_todo_el_pro` text DEFAULT NULL,
  `p9_c_el_entendimiento_de_los_proble` text DEFAULT NULL,
  `p9_d_la_cortesia_y_amabilidad_del_a` text DEFAULT NULL,
  `p9_e_capacidad_de_respuesta_del_ase` text DEFAULT NULL,
  `p9_f_la_explicacion_del_trabajo_rea` text DEFAULT NULL,
  `p9_g_la_explicacion_de_los_costos_d` text DEFAULT NULL,
  `p9_h_la_amabilidad_del_personal_en_` text DEFAULT NULL,
  `p9_i_la_prontitud_en_tener_su_vehic` text DEFAULT NULL,
  `p9_j_relacion_del_precio_pagado_res` text DEFAULT NULL,
  `p9_k_la_conveniencia_en_dias_y_hora` text DEFAULT NULL,
  `p9_l_limpieza_y_comodidad_de_la_sal` text DEFAULT NULL,
  `p9_m_variedad_de_servicios_por_ejem` text DEFAULT NULL,
  `p9_n_minuciosidad_del_trabajo_de_ma` text DEFAULT NULL,
  `p9_o_habilidad_para_diagnosticar_lo` text DEFAULT NULL,
  `p9_p_calidad_del_trabajo_realizado_` text DEFAULT NULL,
  `p9_q_condicion_de_entrega_de_su_veh` text DEFAULT NULL,
  `p10_el_trabajo_se_hizo_bien_la_prim` text DEFAULT NULL,
  `p11_cual_cree_que_fue_la_razon_es_p` text DEFAULT NULL,
  `p13_se_comunicaron_con_usted_luego_` text DEFAULT NULL,
  `p14_le_ofrecieron_servicio_de_trans` text DEFAULT NULL,
  `p15_el_asesor_de_servicio_le_ofreci` text DEFAULT NULL,
  `p16_de_manera_general_como_califica` text DEFAULT NULL,
  `p17_visitaria_nuevamente_el_mismo_t` text DEFAULT NULL,
  `p17_1_por_favor_haganos_saber_por_q` text DEFAULT NULL,
  `17_1_otros` text DEFAULT NULL,
  `p18_que_tan_probable_es_que_ud_reco` text DEFAULT NULL,
  `p19_cual_es_la_principal_razon_por_` text DEFAULT NULL,
  `p19_otros` text DEFAULT NULL,
  `p20_tuvo_usted_algun_inconveniente_` text DEFAULT NULL,
  `p20_1_opciones` text DEFAULT NULL,
  `p20_1_antes_del_servicio` text DEFAULT NULL,
  `p20_2_asesor_de_servicio` text DEFAULT NULL,
  `p20_3_recojo_de_vehiculo` text DEFAULT NULL,
  `p20_4_facilidades_de_servicio` text DEFAULT NULL,
  `p20_5_calidad_de_servicio` text DEFAULT NULL,
  `p20_6_otros_inconvenientes` text DEFAULT NULL,
  `p20_otros` text DEFAULT NULL,
  `p21_pregunta_preliminar_de_consenti` text DEFAULT NULL,
  `p22_autorizacion_consentimiento_fin` text DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `tipo_de_documento` varchar(255) DEFAULT NULL,
  `nombres_y_apellidos` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `asesor_de_servicio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcarga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bd_skberge_reportes.177_skberge_encuestas_kscs
CREATE TABLE IF NOT EXISTS `177_skberge_encuestas_kscs` (
  `base` varchar(255) DEFAULT NULL,
  `idcarga` varchar(255) NOT NULL,
  `rutpropietario` varchar(255) DEFAULT NULL,
  `concesionario` varchar(255) DEFAULT NULL,
  `vinvehiculo` varchar(255) DEFAULT NULL,
  `marcasingle` varchar(255) DEFAULT NULL,
  `tipo_evento` varchar(255) DEFAULT NULL,
  `modelo_homologado` varchar(255) DEFAULT NULL,
  `nombre_propietario` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `validacion_telefono_1` varchar(255) DEFAULT NULL,
  `telefono_2` varchar(255) DEFAULT NULL,
  `validacion_telefono_2` varchar(255) DEFAULT NULL,
  `telefono_3` varchar(255) DEFAULT NULL,
  `validacion_telefono_3` varchar(255) DEFAULT NULL,
  `emailpropietario` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `fechagestion` varchar(255) DEFAULT NULL,
  `gestor` varchar(255) DEFAULT NULL,
  `respuesta` text DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `tipogestion` varchar(255) DEFAULT NULL,
  `telefono1` varchar(255) DEFAULT NULL,
  `duracionllamada` varchar(255) DEFAULT NULL,
  `p0_es_propietario_del_vehiculo` text DEFAULT NULL,
  `p1_tu_vehiculo_anterior_era_un_kia` text DEFAULT NULL,
  `p2_que_marca_de_vehiculo_tuvo_antes` text DEFAULT NULL,
  `p3_es_su_vehiculo_de_uso_privado_o_` text DEFAULT NULL,
  `p4_visito_ud_mismo_el_concesionario` text DEFAULT NULL,
  `p5_como_calificaria_su_experiencia_` text DEFAULT NULL,
  `p6_que_tan_probable_es_que_visite_e` text DEFAULT NULL,
  `p6_1_haganos_saber_por_que_no_esta_` text DEFAULT NULL,
  `p6_1_otros` text DEFAULT NULL,
  `p7_como_se_entero_del_concesionario` text DEFAULT NULL,
  `p8_cual_fue_su_grado_de_satisfaccio` text DEFAULT NULL,
  `p9_cual_fue_su_grado_de_satisfaccio` text DEFAULT NULL,
  `p10_que_tan_satisfecho_quedo_con_el` text DEFAULT NULL,
  `p_11_1_el_facil_acceso_al_concesion` text DEFAULT NULL,
  `p_11_2_la_apariencia_de_las_instala` text DEFAULT NULL,
  `p_11_3_la_variedad_de_vehiculos_en_` text DEFAULT NULL,
  `p_11_4_la_facilidad_para_visualizar` text DEFAULT NULL,
  `p_11_5_la_comodidad_de_las_oficinas` text DEFAULT NULL,
  `p_11_6_predisposicion_del_personal_` text DEFAULT NULL,
  `p_12_1_la_apariencia_del_vendedor_p` text DEFAULT NULL,
  `p_12_2_su_cortesia_y_cordialidad` text DEFAULT NULL,
  `p_12_3_su_conocimiento_y_experienci` text DEFAULT NULL,
  `p_12_4_las_recomendaciones_del_vehi` text DEFAULT NULL,
  `p_12_5_su_disposicion_para_ofrecerl` text DEFAULT NULL,
  `p12_1_1_le_ofrecieron_una_prueba_de` text DEFAULT NULL,
  `p13_realizo_usted_una_prueba_de_man` text DEFAULT NULL,
  `p14_por_que_no_realizo_una_prueba_d` text DEFAULT NULL,
  `p15_por_favor_califique_su_satisfac` text DEFAULT NULL,
  `p16_cual_es_la_principal_razon_por_` text DEFAULT NULL,
  `p17_le_explico_de_la_cobertura_de_l` text DEFAULT NULL,
  `p18_le_explico_del_programa_de_mant` text DEFAULT NULL,
  `p19_le_informo_a_donde_llevar_su_ve` text DEFAULT NULL,
  `p20_1_explicacion_clara_y_precisa_d` text DEFAULT NULL,
  `p20_2_manejo_del_proceso_de_solicit` text DEFAULT NULL,
  `p21_el_vendedor_de_kia_le_ofrecio_c` text DEFAULT NULL,
  `p22_por_que_motivos_no_tomo_el_cred` text DEFAULT NULL,
  `p23_1_la_explicacion_adecuada_de_la` text DEFAULT NULL,
  `p23_2_la_condicion_de_su_vehiculo_c` text DEFAULT NULL,
  `p23_3_informacion_del_asesor_de_ven` text DEFAULT NULL,
  `p23_4_el_tiempo_de_entrega_despues_` text DEFAULT NULL,
  `p24_su_vehiculo_fue_entregado_en_la` text DEFAULT NULL,
  `p25_luego_de_hacer_la_cancelacion_d` text DEFAULT NULL,
  `p26_al_comprar_un_vehiculo_que_prom` text DEFAULT NULL,
  `p27_el_vendedor_de_kia_le_ofrecio_s` text DEFAULT NULL,
  `p28_por_que_motivos_no_tomo_el_segu` text DEFAULT NULL,
  `p29_que_tan_dispuesto_estaria_ud_en` text DEFAULT NULL,
  `p30_que_tan_probable_es_que_ud_reco` text DEFAULT NULL,
  `p31_cual_es_la_principal_razon_por_` text DEFAULT NULL,
  `p31_otros` text DEFAULT NULL,
  `p32_tuvo_usted_algun_problema_o_inc` text DEFAULT NULL,
  `p32_opciones` text DEFAULT NULL,
  `p32_1_antes_del_servicio` text DEFAULT NULL,
  `p32_2_personal_de_ventas` text DEFAULT NULL,
  `p32_3_prueba_de_manejo` text DEFAULT NULL,
  `p32_4_compra_de_vehiculo` text DEFAULT NULL,
  `p32_5_entrega_de_vehiculos` text DEFAULT NULL,
  `p32_6_concesionario_de_ventas` text DEFAULT NULL,
  `p32_7_otros_inconvenientes` text DEFAULT NULL,
  `p32_otros` text DEFAULT NULL,
  `p33_pregunta_preliminar_de_consenti` text DEFAULT NULL,
  `p34_autorizacion_consentimiento_fin` text DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `tipo_de_documento` varchar(255) DEFAULT NULL,
  `nombres_y_apellidos` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `asesor_de_servicio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcarga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bd_skberge_reportes.181_skberge_ssi_peugeot
CREATE TABLE IF NOT EXISTS `181_skberge_ssi_peugeot` (
  `base` varchar(255) DEFAULT NULL,
  `idcarga` varchar(255) NOT NULL,
  `rutpropietario` varchar(255) DEFAULT NULL,
  `concesionario` varchar(255) DEFAULT NULL,
  `vinvehiculo` varchar(255) DEFAULT NULL,
  `marcasingle` varchar(255) DEFAULT NULL,
  `tipo_evento` varchar(255) DEFAULT NULL,
  `modelo_homologado` varchar(255) DEFAULT NULL,
  `nombre_propietario` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `validacion_telefono_1` varchar(255) DEFAULT NULL,
  `telefono_2` varchar(255) DEFAULT NULL,
  `validacion_telefono_2` varchar(255) DEFAULT NULL,
  `telefono_3` varchar(255) DEFAULT NULL,
  `validacion_telefono_3` varchar(255) DEFAULT NULL,
  `emailpropietario` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `fechagestion` varchar(255) DEFAULT NULL,
  `gestor` varchar(255) DEFAULT NULL,
  `respuesta` text DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `tipogestion` varchar(255) DEFAULT NULL,
  `telefono1` varchar(255) DEFAULT NULL,
  `duracionllamada` varchar(255) DEFAULT NULL,
  `p1_usted_es_propietario_del_vehicul` text DEFAULT NULL,
  `p2_podria_calificar_su_nivel_de_sat` text DEFAULT NULL,
  `p3_compraria_ud_nuevamente_un_vehic` text DEFAULT NULL,
  `p4_que_tan_probable_es_que_nos_reco` text DEFAULT NULL,
  `p5_asimismo_queremos_comentarle_que` text DEFAULT NULL,
  `p6_por_favor_indiquenos_el_motivo_p` text DEFAULT NULL,
  `p7_para_finalizar_sr_a_apellido_del` text DEFAULT NULL,
  `autorizacion_de_datos` text DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `nombres_y_apellidos` varchar(255) DEFAULT NULL,
  `tipo_de_documento` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcarga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bd_skberge_reportes.190_skberge_csm_mitsubishi
CREATE TABLE IF NOT EXISTS `190_skberge_csm_mitsubishi` (
  `base` varchar(255) DEFAULT NULL,
  `idcarga` varchar(255) NOT NULL,
  `rutpropietario` varchar(255) DEFAULT NULL,
  `concesionario` varchar(255) DEFAULT NULL,
  `vinvehiculo` varchar(255) DEFAULT NULL,
  `marcasingle` varchar(255) DEFAULT NULL,
  `tipo_evento` varchar(255) DEFAULT NULL,
  `modelo_homologado` varchar(255) DEFAULT NULL,
  `nombre_propietario` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `validacion_telefono_1` varchar(255) DEFAULT NULL,
  `telefono_2` varchar(255) DEFAULT NULL,
  `validacion_telefono_2` varchar(255) DEFAULT NULL,
  `telefono_3` varchar(255) DEFAULT NULL,
  `validacion_telefono_3` varchar(255) DEFAULT NULL,
  `emailpropietario` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `fechagestion` varchar(255) DEFAULT NULL,
  `gestor` varchar(255) DEFAULT NULL,
  `respuesta` text DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `tipogestion` varchar(255) DEFAULT NULL,
  `telefono1` varchar(255) DEFAULT NULL,
  `duracionllamada` varchar(255) DEFAULT NULL,
  `p0_es_propietario_del_vehiculo` text DEFAULT NULL,
  `p1_llevo_usted_el_vehiculo_al_ultim` text DEFAULT NULL,
  `p3_en_una_escala_del_1_al_10_donde_` text DEFAULT NULL,
  `p4_que_probabilidades_hay_de_que_re` text DEFAULT NULL,
  `p5_visitaria_este_concesionario_otr` text DEFAULT NULL,
  `p6_con_que_puntaje_calificaria_la_e` text DEFAULT NULL,
  `p7_se_realizo_todo_el_trabajo_en_su` text DEFAULT NULL,
  `p8_se_completo_el_servicio_o_repara` text DEFAULT NULL,
  `p9_que_sugerencia_de_mejora_haria_p` text DEFAULT NULL,
  `otros9` text DEFAULT NULL,
  `p10_pregunta_preliminar_de_consenti` text DEFAULT NULL,
  `p11_autorizacion_consentimiento_fin` text DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `tipo_de_documento` varchar(255) DEFAULT NULL,
  `nombres_y_apellidos` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcarga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bd_skberge_reportes.191_skberge_csm_fuso
CREATE TABLE IF NOT EXISTS `191_skberge_csm_fuso` (
  `base` varchar(255) DEFAULT NULL,
  `idcarga` varchar(255) NOT NULL,
  `rutpropietario` varchar(255) DEFAULT NULL,
  `concesionario` varchar(255) DEFAULT NULL,
  `vinvehiculo` varchar(255) DEFAULT NULL,
  `marcasingle` varchar(255) DEFAULT NULL,
  `tipo_evento` varchar(255) DEFAULT NULL,
  `modelo_homologado` varchar(255) DEFAULT NULL,
  `nombre_propietario` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `validacion_telefono_1` varchar(255) DEFAULT NULL,
  `telefono_2` varchar(255) DEFAULT NULL,
  `validacion_telefono_2` varchar(255) DEFAULT NULL,
  `telefono_3` varchar(255) DEFAULT NULL,
  `validacion_telefono_3` varchar(255) DEFAULT NULL,
  `emailpropietario` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `fechagestion` varchar(255) DEFAULT NULL,
  `gestor` varchar(255) DEFAULT NULL,
  `respuesta` text DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `tipogestion` varchar(255) DEFAULT NULL,
  `telefono1` varchar(255) DEFAULT NULL,
  `duracionllamada` varchar(255) DEFAULT NULL,
  `p0_es_propietario_del_vehiculo` text DEFAULT NULL,
  `p1_llevo_usted_el_vehiculo_al_ultim` text DEFAULT NULL,
  `p2_en_una_escala_del_1_al_10_donde_` text DEFAULT NULL,
  `p3_que_probabilidades_hay_de_que_re` text DEFAULT NULL,
  `p4_visitaria_este_concesionario_nue` text DEFAULT NULL,
  `p5_con_que_puntaje_calificaria_la_e` text DEFAULT NULL,
  `p6_se_realizo_todo_el_trabajo_en_su` text DEFAULT NULL,
  `p7_se_completo_el_servicio_o_repara` text DEFAULT NULL,
  `p8_que_sugerencia_de_mejora_daria_p` text DEFAULT NULL,
  `otros_p8` text DEFAULT NULL,
  `p9_pregunta_preliminar_de_consentim` text DEFAULT NULL,
  `p10_autorizacion_consentimiento_fin` text DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `tipo_de_documento` varchar(255) DEFAULT NULL,
  `nombres_y_apellidos` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcarga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bd_skberge_reportes.192_skberge_csm_chery
CREATE TABLE IF NOT EXISTS `192_skberge_csm_chery` (
  `base` varchar(255) DEFAULT NULL,
  `idcarga` varchar(255) NOT NULL,
  `rutpropietario` varchar(255) DEFAULT NULL,
  `concesionario` varchar(255) DEFAULT NULL,
  `vinvehiculo` varchar(255) DEFAULT NULL,
  `marcasingle` varchar(255) DEFAULT NULL,
  `tipo_evento` varchar(255) DEFAULT NULL,
  `modelo_homologado` varchar(255) DEFAULT NULL,
  `nombre_propietario` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `validacion_telefono_1` varchar(255) DEFAULT NULL,
  `telefono_2` varchar(255) DEFAULT NULL,
  `validacion_telefono_2` varchar(255) DEFAULT NULL,
  `telefono_3` varchar(255) DEFAULT NULL,
  `validacion_telefono_3` varchar(255) DEFAULT NULL,
  `emailpropietario` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `fechagestion` varchar(255) DEFAULT NULL,
  `gestor` varchar(255) DEFAULT NULL,
  `respuesta` text DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `tipogestion` varchar(255) DEFAULT NULL,
  `telefono1` varchar(255) DEFAULT NULL,
  `duracionllamada` varchar(255) DEFAULT NULL,
  `p0_es_propietario_del_vehiculo` text DEFAULT NULL,
  `p2_1_llevo_usted_el_vehiculo_al_ult` text DEFAULT NULL,
  `p3_si_realizo_una_cita_por_favor_ca` text DEFAULT NULL,
  `califica` text DEFAULT NULL,
  `p4_el_tiempo_de_espera_hasta_que_lo` text DEFAULT NULL,
  `p5_saludo_de_bienvenida` text DEFAULT NULL,
  `p6_la_amabilidad_del_asesor_de_serv` text DEFAULT NULL,
  `p7_la_comunicacion_con_su_asesor_a_` text DEFAULT NULL,
  `p8_la_explicacion_brindada_sobre_lo` text DEFAULT NULL,
  `p9_cumplimiento_de_su_asesor_con_to` text DEFAULT NULL,
  `p10_el_cumplimiento_con_la_hora_y_f` text DEFAULT NULL,
  `p9_se_realizo_todo_el_trabajo_en_su` text DEFAULT NULL,
  `p10_se_completo_el_servicio_o_repar` text DEFAULT NULL,
  `p11_limpieza_y_apariencia_de_su_veh` text DEFAULT NULL,
  `p12_el_precio_pagado_por_el_servici` text DEFAULT NULL,
  `p13_las_instalaciones_del_concesion` text DEFAULT NULL,
  `p14_en_general_su_satisfaccion_con_` text DEFAULT NULL,
  `p15_visitaria_este_concesionario_ot` text DEFAULT NULL,
  `p16_recomendaria_el_servicio_de_est` text DEFAULT NULL,
  `p17_cual_es_la_principal_razon_por_` text DEFAULT NULL,
  `p17_otros` text DEFAULT NULL,
  `p18_que_sugerencia_de_mejora_haria_` text DEFAULT NULL,
  `otros18` text DEFAULT NULL,
  `p19_pregunta_preliminar_de_consenti` text DEFAULT NULL,
  `p20_autorizacion_consentimiento_fin` text DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `tipo_de_documento` varchar(255) DEFAULT NULL,
  `nombres_y_apellidos` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcarga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bd_skberge_reportes.193_skberge_csm_mg
CREATE TABLE IF NOT EXISTS `193_skberge_csm_mg` (
  `base` varchar(255) DEFAULT NULL,
  `idcarga` varchar(255) NOT NULL,
  `rutpropietario` varchar(255) DEFAULT NULL,
  `concesionario` varchar(255) DEFAULT NULL,
  `vinvehiculo` varchar(255) DEFAULT NULL,
  `marcasingle` varchar(255) DEFAULT NULL,
  `tipo_evento` varchar(255) DEFAULT NULL,
  `modelo_homologado` varchar(255) DEFAULT NULL,
  `nombre_propietario` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `validacion_telefono_1` varchar(255) DEFAULT NULL,
  `telefono_2` varchar(255) DEFAULT NULL,
  `validacion_telefono_2` varchar(255) DEFAULT NULL,
  `telefono_3` varchar(255) DEFAULT NULL,
  `validacion_telefono_3` varchar(255) DEFAULT NULL,
  `emailpropietario` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `fechagestion` varchar(255) DEFAULT NULL,
  `gestor` varchar(255) DEFAULT NULL,
  `respuesta` text DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `tipogestion` varchar(255) DEFAULT NULL,
  `telefono1` varchar(255) DEFAULT NULL,
  `duracionllamada` varchar(255) DEFAULT NULL,
  `p0_es_propietario_del_vehiculo` text DEFAULT NULL,
  `p2_1_llevo_usted_el_vehiculo_al_ult` text DEFAULT NULL,
  `p3_si_realizo_una_cita_por_favor_ca` text DEFAULT NULL,
  `califica` text DEFAULT NULL,
  `p4_el_tiempo_de_espera_hasta_que_lo` text DEFAULT NULL,
  `p5_saludo_de_bienvenida` text DEFAULT NULL,
  `p6_la_amabilidad_del_asesor_de_serv` text DEFAULT NULL,
  `p7_la_comunicacion_con_su_asesor_a_` text DEFAULT NULL,
  `p8_la_explicacion_brindada_sobre_lo` text DEFAULT NULL,
  `p9_cumplimiento_de_su_asesor_con_to` text DEFAULT NULL,
  `p10_el_cumplimiento_con_la_hora_y_f` text DEFAULT NULL,
  `p9_se_realizo_todo_el_trabajo_en_su` text DEFAULT NULL,
  `p10_se_completo_el_servicio_o_repar` text DEFAULT NULL,
  `p11_limpieza_y_apariencia_de_su_veh` text DEFAULT NULL,
  `p12_el_precio_pagado_por_el_servici` text DEFAULT NULL,
  `p13_las_instalaciones_del_concesion` text DEFAULT NULL,
  `p14_en_general_su_satisfaccion_con_` text DEFAULT NULL,
  `p15_visitaria_este_concesionario_ot` text DEFAULT NULL,
  `p16_recomendaria_el_servicio_de_est` text DEFAULT NULL,
  `p_no_aplica_1` text DEFAULT NULL,
  `p_no_aplica_2` text DEFAULT NULL,
  `p17_que_sugerencia_de_mejora_haria_` text DEFAULT NULL,
  `otros17` text DEFAULT NULL,
  `p18_pregunta_preliminar_de_consenti` text DEFAULT NULL,
  `p19_autorizacion_consentimiento_fin` text DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `tipo_de_documento` varchar(255) DEFAULT NULL,
  `nombres_y_apellidos` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcarga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bd_skberge_reportes.194_skberge_ssi_mitsubishi
CREATE TABLE IF NOT EXISTS `194_skberge_ssi_mitsubishi` (
  `base` varchar(255) DEFAULT NULL,
  `idcarga` varchar(255) NOT NULL,
  `rutpropietario` varchar(255) DEFAULT NULL,
  `concesionario` varchar(255) DEFAULT NULL,
  `vinvehiculo` varchar(255) DEFAULT NULL,
  `marcasingle` varchar(255) DEFAULT NULL,
  `tipo_evento` varchar(255) DEFAULT NULL,
  `modelo_homologado` varchar(255) DEFAULT NULL,
  `nombre_propietario` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `validacion_telefono_1` varchar(255) DEFAULT NULL,
  `telefono_2` varchar(255) DEFAULT NULL,
  `validacion_telefono_2` varchar(255) DEFAULT NULL,
  `telefono_3` varchar(255) DEFAULT NULL,
  `validacion_telefono_3` varchar(255) DEFAULT NULL,
  `emailpropietario` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `fechagestion` varchar(255) DEFAULT NULL,
  `gestor` varchar(255) DEFAULT NULL,
  `respuesta` text DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `tipogestion` varchar(255) DEFAULT NULL,
  `telefono1` varchar(255) DEFAULT NULL,
  `duracionllamada` varchar(255) DEFAULT NULL,
  `p3_es_propietario_del_vehiculo` text DEFAULT NULL,
  `p4_como_calificaria_la_experiencia_` text DEFAULT NULL,
  `p5_que_probabilidad_hay_de_que_reco` text DEFAULT NULL,
  `p6_compraria_ud_nuevamente_un_vehic` text DEFAULT NULL,
  `p7_la_atencion_del_asesor_de_ventas` text DEFAULT NULL,
  `p8_el_proceso_de_entrega_de_su_vehi` text DEFAULT NULL,
  `p9_el_cumplimiento_con_la_fecha_de_` text DEFAULT NULL,
  `p10_de_acuerdo_con_su_experiencia_q` text DEFAULT NULL,
  `otros10` text DEFAULT NULL,
  `p11_pregunta_preliminar_de_consenti` text DEFAULT NULL,
  `p12_autorizacion_consentimiento_fin` text DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `tipo_de_documento` varchar(255) DEFAULT NULL,
  `nombres_y_apellidos` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcarga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bd_skberge_reportes.195_skberge_ssi_fuso
CREATE TABLE IF NOT EXISTS `195_skberge_ssi_fuso` (
  `base` varchar(255) DEFAULT NULL,
  `idcarga` varchar(255) NOT NULL,
  `rutpropietario` varchar(255) DEFAULT NULL,
  `concesionario` varchar(255) DEFAULT NULL,
  `vinvehiculo` varchar(255) DEFAULT NULL,
  `marcasingle` varchar(255) DEFAULT NULL,
  `tipo_evento` varchar(255) DEFAULT NULL,
  `modelo_homologado` varchar(255) DEFAULT NULL,
  `nombre_propietario` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `validacion_telefono_1` varchar(255) DEFAULT NULL,
  `telefono_2` varchar(255) DEFAULT NULL,
  `validacion_telefono_2` varchar(255) DEFAULT NULL,
  `telefono_3` varchar(255) DEFAULT NULL,
  `validacion_telefono_3` varchar(255) DEFAULT NULL,
  `emailpropietario` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `fechagestion` varchar(255) DEFAULT NULL,
  `gestor` varchar(255) DEFAULT NULL,
  `respuesta` text DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `tipogestion` varchar(255) DEFAULT NULL,
  `telefono1` varchar(255) DEFAULT NULL,
  `duracionllamada` varchar(255) DEFAULT NULL,
  `p3_es_propietario_del_vehiculo` text DEFAULT NULL,
  `p4_como_calificaria_la_experiencia_` text DEFAULT NULL,
  `p5_que_probabilidad_hay_de_que_reco` text DEFAULT NULL,
  `p6_compraria_ud_nuevamente_un_vehic` text DEFAULT NULL,
  `p7_la_atencion_del_asesor_de_venta` text DEFAULT NULL,
  `p8_el_proceso_de_entrega_de_su_vehi` text DEFAULT NULL,
  `p9_el_cumplimiento_con_la_fecha_de_` text DEFAULT NULL,
  `p10_de_acuerdo_con_su_experiencia_q` text DEFAULT NULL,
  `otros10` text DEFAULT NULL,
  `p11_pregunta_preliminar_de_consenti` text DEFAULT NULL,
  `p12_autorizacion_consentimiento_fin` text DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `tipo_de_documento` varchar(255) DEFAULT NULL,
  `nombres_y_apellidos` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcarga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla bd_skberge_reportes.196_skberge_ssi_chery
CREATE TABLE IF NOT EXISTS `196_skberge_ssi_chery` (
  `base` varchar(255) DEFAULT NULL,
  `idcarga` varchar(255) NOT NULL,
  `rutpropietario` varchar(255) DEFAULT NULL,
  `concesionario` varchar(255) DEFAULT NULL,
  `vinvehiculo` varchar(255) DEFAULT NULL,
  `marcasingle` varchar(255) DEFAULT NULL,
  `tipo_evento` varchar(255) DEFAULT NULL,
  `modelo_homologado` varchar(255) DEFAULT NULL,
  `nombre_propietario` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `validacion_telefono_1` varchar(255) DEFAULT NULL,
  `telefono_2` varchar(255) DEFAULT NULL,
  `validacion_telefono_2` varchar(255) DEFAULT NULL,
  `telefono_3` varchar(255) DEFAULT NULL,
  `validacion_telefono_3` varchar(255) DEFAULT NULL,
  `emailpropietario` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `fechagestion` varchar(255) DEFAULT NULL,
  `gestor` varchar(255) DEFAULT NULL,
  `respuesta` text DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `tipogestion` varchar(255) DEFAULT NULL,
  `telefono1` varchar(255) DEFAULT NULL,
  `duracionllamada` varchar(255) DEFAULT NULL,
  `p0_es_propietario_del_vehiculo` text DEFAULT NULL,
  `p1_su_satisfaccion_general_con_la_e` text DEFAULT NULL,
  `p2_el_cumplimiento_con_la_fecha_de_` text DEFAULT NULL,
  `p3_la_atencion_del_asesor_de_venta_` text DEFAULT NULL,
  `p4_las_instalaciones_del_concesiona` text DEFAULT NULL,
  `p5_el_proceso_de_entrega_de_su_vehi` text DEFAULT NULL,
  `p6_le_explicaron_el_funcionamiento_` text DEFAULT NULL,
  `p7_le_explicaron_la_cobertura_de_la` text DEFAULT NULL,
  `p8_le_explicaron_el_programa_de_man` text DEFAULT NULL,
  `p9_le_explicaron_el_contenido_de_su` text DEFAULT NULL,
  `p10_le_ofrecieron_un_plan_de_financ` text DEFAULT NULL,
  `p11_le_ofrecieron_un_plan_de_financ` text DEFAULT NULL,
  `p12_le_ofrecieron_un_seguro_vehicul` text DEFAULT NULL,
  `p13_le_ofrecieron_un_seguro_vehicul` text DEFAULT NULL,
  `p14_le_indicaron_a_donde_llevar_su_` text DEFAULT NULL,
  `p15_tenia_usted_un_vehiculo_antes_d` text DEFAULT NULL,
  `p16_era_nuevo_o_usado` text DEFAULT NULL,
  `p17_de_que_marca_y_modelo_era` text DEFAULT NULL,
  `otros17` text DEFAULT NULL,
  `modelo` text DEFAULT NULL,
  `p18_evaluo_algun_otro_vehiculo_al_m` text DEFAULT NULL,
  `p18_1_de_que_marca_era` text DEFAULT NULL,
  `p18_2_de_que_marca_era` text DEFAULT NULL,
  `p19_como_se_entero_de_la_marca` text DEFAULT NULL,
  `p19_1_en_caso_marque_otra_forma_de_` text DEFAULT NULL,
  `p20_cual_de_los_siguientes_factores` text DEFAULT NULL,
  `otros20` text DEFAULT NULL,
  `p21_que_probabilidades_hay_de_que_r` text DEFAULT NULL,
  `p22_cual_es_la_principal_razon_por_` text DEFAULT NULL,
  `p22_otros` text DEFAULT NULL,
  `p23_en_el_futuro_compraria_ud_nueva` text DEFAULT NULL,
  `p24_que_sugerencia_nos_haria_para_m` text DEFAULT NULL,
  `otros24` text DEFAULT NULL,
  `p25_pregunta_preliminar_de_consenti` text DEFAULT NULL,
  `p26_autorizacion_consentimiento_fin` text DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `tipo_de_documento` varchar(255) DEFAULT NULL,
  `nombres_y_apellidos` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcarga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
