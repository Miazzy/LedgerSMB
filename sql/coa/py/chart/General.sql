begin;
--
-- LedgerSMB Sample COA - Paraguay
-- Version: 2.4.6
-- Submitted by: Mario L. Epp
-- Date: 2005-01-03
--
--
SELECT account_heading_save(null, accno, description, null)
  FROM ( VALUES ('1.000','ACTIVO','H','A','',''),
                ('1.110','DISPONIBLE','H','A','',''),
                ('1.111','Caja','H','A','',''),
                ('1.112','Bancos','H','A','',''),
                ('1.120','VALORES NEGOCIABLES / INVERSIONES TRANSITORIAS','H','A','',''),
                ('1.130','CRÉDITOS','H','A','',''),
                ('1.140','BIENES DE CAMBIO','H','A','',''),
                ('1.150','OTROS ACTIVOS CORRIENTES','H','A','',''),
                ('1.200','REALIZABLE A LARGO PLAZO','H','A','',''),
                ('1.210','INVERSIONES PERMANENTES','H','A','',''),
                ('1.220','CRÉDITOS','H','A','',''),
                ('1.300','ACTIVO FIJO','H','A','',''),
                ('1.310','MUEBLES, ÚTILES Y ENSERES','H','A','',''),
                ('1.311','MUEBLES Y EQUIPOS','H','A','',''),
                ('1.312','ÚTILES Y ENSERES','H','A','',''),
                ('1.320','MAQUINARIAS, HERRAMIENTAS Y EQUIPOS','H','A','',''),
                ('1.321','MAQUINARIAS','H','A','',''),
                ('1.322','HERRAMIENTAS Y EQUIPOS','H','A','',''),
                ('1.323','EQUIPOS INFORMÁTICOS','H','A','',''),
                ('1.330','TRANSPORTE TERRESTRE','H','A','',''),
                ('1.331','AUTOS, CAMIONETAS, CAMIONES O ACOPLADOS','H','A','',''),
                ('1.332','MOTOCICLETAS, TRICICLOS Y BICICLETAS','H','A','',''),
                ('1.333','BIENES PARA TRANSPORTE TERRESTRE','H','A','',''),
                ('1.340','TRANSPORTE AÉREO','H','A','',''),
                ('1.341','AVIONES Y MATERIAL DE VUELO','H','A','',''),
                ('1.342','INSTALACIONES DE TIERRA','H','A','',''),
                ('1.350','TRANSPORTE MARÍTIMO Y FLUVIAL','H','A','',''),
                ('1.351','EMBARCACIONES EN GENERAL','H','A','',''),
                ('1.352','CANOAS, BOTES Y DEMÁS BIENES','H','A','',''),
                ('1.360','TRANSPORTE FERROVIARIO','H','A','',''),
                ('1.361','MATERIALES RODANTES','H','A','',''),
                ('1.362','VÍAS Y DEMÁS BIENES','H','A','',''),
                ('1.370','INMUEBLES','H','A','',''),
                ('1.371','CONSTRUCCIONES EN INMUEBLES URBANOS','H','A','',''),
                ('1.372','CONSTRUCCIONES EN INMUEBLES RURALES','H','A','',''),
                ('1.373','CONSTRUCCIONES EN INMUEBLES AJENOS','H','A','',''),
                ('1.381','RESTANTES BIENES','H','A','',''),
                ('1.390','BIENES INTANGIBLES','H','A','',''),
                ('2.000','PASIVO','H','L','',''),
                ('2.100','CIRCULANTE','H','L','',''),
                ('2.110','DEUDAS','H','L','',''),
                ('2.150','PROVISIONES','H','L','',''),
                ('2.200','EXIGIBLE A LARGO PLAZO','H','L','',''),
                ('2.210','DEUDAS','H','L','',''),
                ('2.220','PREVISIONES','H','L','',''),
                ('3.000','PATRIMONIO NETO','H','Q','',''),
                ('3.100','CAPITAL','H','Q','',''),
                ('3.200','RESERVAS','H','Q','',''),
                ('3.300','RESULTADOS','H','Q','',''),
                ('4.000','INGRESOS','H','I','',''),
                ('4.100','INGRESOS OPERATIVOS','H','I','',''),
                ('4.200','INGRESOS NO OPERATIVOS','H','I','',''),
                ('4.300','INGRESOS EXTRAORDINARIOS','H','I','',''),
                ('5.000','EGRESOS','H','E','',''),
                ('5.100','EGRESOS OPERATIVOS','H','E','',''),
                ('5.110','COSTO DE MERCADERÍAS VENDIDAS','H','E','',''),
                ('5.120','COSTO DE SERVICIOS VENDIDOS','H','E','',''),
                ('5.130','GASTOS DE VENTAS','H','E','',''),
                ('5.140','GASTOS DE ADMINISTRACIÓN','H','E','',''),
                ('5.150','GASTOS FINANCIEROS','H','E','',''),
                ('5.200','EGRESOS NO OPERATIVOS','H','E','',''),
                ('5.300','EGRESOS EXTRAORDINARIOS','H','E','','')
       ) c (accno, description, charttype, category, link, gifi_accno);

SELECT account__save(NULL, accno, description, category, gifi_accno, null, false, false,
                     string_to_array(link, ':'), false, false)
  FROM ( VALUES ('1.111.01','Recaudaciones a depositar','A','A','',''),
                ('1.111.02','Fondo fijo','A','A','',''),
                ('1.111.03','Valores a depositar','A','A','',''),
                ('1.111.04','Monedas extranjeras','A','A','',''),
                ('1.112.01','Cuenta Corriente','A','A','',''),
                ('1.112.02','Caja de Ahorro','A','A','',''),
                ('1.120.01','Títulos y acciones','A','A','',''),
                ('1.120.02','Títulos públicos','A','A','',''),
                ('1.120.03','Depósito a plazo fijo','A','A','',''),
                ('1.120.04','Previsión fluctuaciones y desvalorizaciones (regularizadora)','A','A','',''),
                ('1.131','Créditos por ventas','A','A','',''),
                ('1.132','Otros créditos','A','A','',''),
                ('1.141','Mercaderías de reventa','A','A','',''),
                ('1.142','Mercaderías en proceso de producción','A','A','',''),
                ('1.151','Muestras y otros materiales de propaganda','A','A','',''),
                ('1.152','Combustibles','A','A','',''),
                ('1.153','Repuestos','A','A','',''),
                ('1.154','Embalajes y envases','A','A','',''),
                ('1.155','Materiales de oficina','A','A','',''),
                ('1.156','Materiales diversos','A','A','',''),
                ('1.211','Títulos públicos','A','A','',''),
                ('1.212','Debenturas','A','A','',''),
                ('1.213','Inversiones en otras empresas','A','A','',''),
                ('1.214','Previsión fluctuaciones y desvalorzaciones','A','A','',''),
                ('1.221','Créditos por ventas','A','A','',''),
                ('1.222','Otros créditos','A','A','',''),
                ('1.311.01','Muebles y equipos - Costo de origen','A','A','',''),
                ('1.311.02','Muebles y equipos - Mejoras','A','A','',''),
                ('1.311.03','Muebles y equipos - Revalúo','A','A','',''),
                ('1.311.04','Muebles y equipos - (Depreciaciones acumuladas)','A','A','',''),
                ('1.312.01','Útiles y enseres - Costo de origen','A','A','',''),
                ('1.312.02','Útiles y enseres - Mejoras','A','A','',''),
                ('1.312.03','Útiles y enseres - Revalúo','A','A','',''),
                ('1.312.04','Útiles y enseres - (Depreciaciones acumuladas)','A','A','',''),
                ('1.321.01','Maquinarias - Costo de origen','A','A','',''),
                ('1.321.02','Maquinarias - Mejoras','A','A','',''),
                ('1.321.03','Maquinarias - Revalúo','A','A','',''),
                ('1.321.04','Maquinarias - (Depreciaciones acumuladas)','A','A','',''),
                ('1.322.01','Herramientas y Equipos - Costo de origen','A','A','',''),
                ('1.322.02','Herramientas y Equipos - Mejoras','A','A','',''),
                ('1.322.03','Herramientas y Equipos - Revalúo','A','A','',''),
                ('1.322.04','Herramientas y Equipos - (Depreciaciones acumuladas)','A','A','',''),
                ('1.323.01','Equipos informáticos - Costo de origen','A','A','',''),
                ('1.323.02','Equipos informáticos - Mejoras','A','A','',''),
                ('1.323.03','Equipos informáticos - Revalúo','A','A','',''),
                ('1.323.04','Equipos informáticos - (Depreciaciones acumuladas)','A','A','',''),
                ('1.331.01','Autos, camionetas, camiones o acoplados - Costo de origen','A','A','',''),
                ('1.331.02','Autos, camionetas, camiones o acoplados - Mejoras','A','A','',''),
                ('1.331.03','Autos, camionetas, camiones o acoplados - Revalúo','A','A','',''),
                ('1.331.04','Autos, camionetas, camiones o acoplados - (Depreciaciones acumuladas)','A','A','',''),
                ('1.332.01','Motocicletas, triciclos y bicicletas - Costo de origen','A','A','',''),
                ('1.332.02','Motocicletas, triciclos y bicicletas - Mejoras','A','A','',''),
                ('1.332.03','Motocicletas, triciclos y bicicletas - Revalúo','A','A','',''),
                ('1.332.04','Motocicletas, triciclos y bicicletas - (Depreciaciones acumuladas)','A','A','',''),
                ('1.333.01','Bienes para transporte terrestre - Costo de origen','A','A','',''),
                ('1.333.02','Bienes para transporte terrestre - Mejoras','A','A','',''),
                ('1.333.03','Bienes para transporte terrestre - Revalúo','A','A','',''),
                ('1.333.04','Bienes para transporte terrestre - (Depreciaciones acumuladas)','A','A','',''),
                ('1.341.01','Aviones y material de vuelo - Costo de origen','A','A','',''),
                ('1.341.02','Aviones y material de vuelo - Mejoras','A','A','',''),
                ('1.341.03','Aviones y material de vuelo - Revalúo','A','A','',''),
                ('1.341.04','Aviones y material de vuelo - (Depreciaciones acumuladas)','A','A','',''),
                ('1.342.01','Instalaciones de tierra - Costo de origen','A','A','',''),
                ('1.342.02','Instalaciones de tierra - Mejoras','A','A','',''),
                ('1.342.03','Instalaciones de tierra - Revalúo','A','A','',''),
                ('1.342.04','Instalaciones de tierra - (Depreciaciones acumuladas)','A','A','',''),
                ('1.351.01','Embarcaciones en general - Costo de origen','A','A','',''),
                ('1.351.02','Embarcaciones en general - Mejoras','A','A','',''),
                ('1.351.03','Embarcaciones en general - Revalúo','A','A','',''),
                ('1.351.04','Embarcaciones en general - (Depreciaciones acumuladas)','A','A','',''),
                ('1.352.01','Canoas, botes y demás bienes - Costo de origen','A','A','',''),
                ('1.352.02','Canoas, botes y demás bienes - Mejoras','A','A','',''),
                ('1.352.03','Canoas, botes y demás bienes - Revalúo','A','A','',''),
                ('1.352.04','Canoas, botes y demás bienes - (Depreciaciones acumuladas)','A','A','',''),
                ('1.361.01','Materiales rodantes - Costo de origen','A','A','',''),
                ('1.361.02','Materiales rodantes - Mejoras','A','A','',''),
                ('1.361.03','Materiales rodantes - Revalúo','A','A','',''),
                ('1.361.04','Materiales rodantes - (Depreciaciones acumuladas)','A','A','',''),
                ('1.362.01','Vías y demás bienes - Costo de origen','A','A','',''),
                ('1.362.02','Vías y demás bienes - Mejoras','A','A','',''),
                ('1.362.03','Vías y demás bienes - Revalúo','A','A','',''),
                ('1.362.04','Vías y demás bienes - (Depreciaciones acumuladas)','A','A','',''),
                ('1.371.01','Construcciones en inmuebles urbanos - Costo de origen','A','A','',''),
                ('1.371.02','Construcciones en inmuebles urbanos - Mejoras','A','A','',''),
                ('1.371.03','Construcciones en inmuebles urbanos - Revalúo','A','A','',''),
                ('1.371.04','Construcciones en inmuebles urbanos - (Depreciaciones acumuladas)','A','A','',''),
                ('1.372.01','Construcciones en inmuebles rurales - Costo de origen','A','A','',''),
                ('1.372.02','Construcciones en inmuebles rurales - Mejoras','A','A','',''),
                ('1.372.03','Construcciones en inmuebles rurales - Revalúo','A','A','',''),
                ('1.372.04','Construcciones en inmuebles rurales - (Depreciaciones acumuladas)','A','A','',''),
                ('1.373.01','Construcciones en inmuebles ajenos - Costo de origen','A','A','',''),
                ('1.373.02','Construcciones en inmuebles ajenos - Mejoras','A','A','',''),
                ('1.373.03','Construcciones en inmuebles ajenos - Revalúo','A','A','',''),
                ('1.373.04','Construcciones en inmuebles ajenos - (Depreciaciones acumuladas)','A','A','',''),
                ('1.381.01','Restantes bienes - Costo de origen','A','A','',''),
                ('1.381.02','Restantes bienes - Mejoras','A','A','',''),
                ('1.381.03','Restantes bienes - Revalúo','A','A','',''),
                ('1.381.04','Restantes bienes - (Depreciaciones acumuladas)','A','A','',''),
                ('1.391','Llave de negocio','A','A','',''),
                ('1.392','Marcas registradas','A','A','',''),
                ('1.393','Concesiones','A','A','',''),
                ('1.394','Patente de invención','A','A','',''),
                ('1.395','Gastos de constitución y organización','A','A','',''),
                ('1.396','Gastos de reorganización','A','A','',''),
                ('1.397','Gastos de proyectos de inversión','A','A','',''),
                ('1.398','Gastos de desarrollo e investigación','A','A','',''),
                ('1.399','(Amortizaciones acumuladas)','A','A','',''),
                ('2.111','Acreedores por compras','A','L','',''),
                ('2.112','Deudas bancarias y financieras','A','L','',''),
                ('2.113','Otras deudas','A','L','',''),
                ('2.151','IVA a pagar','A','L','',''),
                ('2.211','Acreedores por compras','A','L','',''),
                ('2.212','Deudas bancarias y financieras','A','L','',''),
                ('2.213','Otras deudas','A','L','',''),
                ('2.221','Previsición para indemnización por despidos','A','L','',''),
                ('2.222','Previsición para indemnización por accidente','A','L','',''),
                ('3.210','Reserva legal','A','Q','',''),
                ('3.220','Reserva de revalúo','A','Q','',''),
                ('3.230','Prima de emisión','A','Q','',''),
                ('3.240','Reserva estatutaria','A','Q','',''),
                ('3.310','Resultados acumulados','A','Q','',''),
                ('3.320','Resultados del ejercicio','A','Q','',''),
                ('4.110','Venta de mercadrías','A','I','',''),
                ('4.120','Venta de servicios','A','I','',''),
                ('4.130','Otros ingresos operativos','H','I','',''),
                ('4.130.01','Intereses ganados','A','I','',''),
                ('4.130.02','Descuentos obtenidos','A','I','',''),
                ('4.130.03','Comisiones obtenidas','A','I','',''),
                ('4.210','Utilidad en venta de bienes de uso','A','I','',''),
                ('4.220','Alquileres ganados','A','I','',''),
                ('4.230','Incobrables recuperados','A','I','',''),
                ('4.240','Utilidad en venta de bienes intangibles','A','I','',''),
                ('4.250','Utilidades varias','A','I','',''),
                ('4.310','Utilidad en venta de bienes de uso','A','I','',''),
                ('4.320','Donaciones y premios','A','I','',''),
                ('4.330','Premios','A','I','',''),
                ('4.340','Diferencias de cambios positivos','A','I','',''),
                ('5.110.01','Costo de ventas sección 1','A','E','',''),
                ('5.110.20','Costo de ventas producto 1','A','E','',''),
                ('5.110.40','Costo de ventas diversas','A','E','',''),
                ('5.110.60','Costo de ventas productos elaborados','A','E','',''),
                ('5.120.01','Costo de servicios','A','E','',''),
                ('5.130.01','Comisiones sobre ventas','A','E','',''),
                ('5.130.02','Publicidad y propaganda','A','E','',''),
                ('5.130.03','Gastos de viajes','A','E','',''),
                ('5.130.04','Gastos de exportación','A','E','',''),
                ('5.130.05','Otros gastos de ventas','A','E','',''),
                ('5.140.01','Aguinaldos','A','E','',''),
                ('5.140.02','Alquileres pagados','A','E','',''),
                ('5.140.03','Depreciación bienes de uso','A','E','',''),
                ('5.140.04','Depreciación bienes intangibles','A','E','',''),
                ('5.140.05','Bonificación familiar','A','E','',''),
                ('5.140.06','Créditos incobrables','A','E','',''),
                ('5.140.07','Aporte patronal sobre salarios','A','E','',''),
                ('5.140.08','Fletes y acarreos','A','E','',''),
                ('5.140.09','Luz, teléfono y agua','A','E','',''),
                ('5.140.10','Impuestos, tasas y contribuciones','A','E','',''),
                ('5.140.11','Seguros','A','E','',''),
                ('5.140.12','Gastos de útiles e impresos','A','E','',''),
                ('5.140.13','Sueldos y jornales','A','E','',''),
                ('5.140.14','Remuneración personal superior','A','E','',''),
                ('5.140.15','Honorarios profesionales','A','E','',''),
                ('5.140.16','Gastos de representación','A','E','',''),
                ('5.140.17','Gastos de cobranza','A','E','',''),
                ('5.140.18','Gastos judiciales','A','E','',''),
                ('5.140.19','Otros gastos de administración','A','E','',''),
                ('5.150.01','Intereses pagados','A','E','',''),
                ('5.150.02','Gastos bancarios','A','E','',''),
                ('5.150.03','Otros gastos financieros','A','E','',''),
                ('5.210','Bajas bienes de uso','A','E','',''),
                ('5.220','Gastos inmuebles alquileres','A','E','',''),
                ('5.230','Pérdidas en ventas bienes de uso','A','E','',''),
                ('5.240','Otros resultados negativos no operativos','A','E','',''),
                ('5.310','Pérdidas en ventas bienes de uso','A','E','',''),
                ('5.320','Donaciones y contribuciones negativas','A','E','',''),
                ('5.330','Indemnizaciones a terceros','A','E','',''),
                ('5.340','Diferencias de cambios negativos','A','E','',''),
                ('5.350','Otros resultados negativos extraordinarios','A','E','','')
       ) c (accno, description, charttype, category, link, gifi_accno);
--
INSERT INTO tax (chart_id,rate) VALUES ((select id from account where accno = '2.151'),'0.1');
--
INSERT INTO defaults (setting_key, value) VALUES ('inventory_accno_id',
                (select id from account where accno = '1.141'));

 INSERT INTO defaults (setting_key, value) VALUES ('income_accno_id', (select id from account where accno = '4.110'));

 INSERT INTO defaults (setting_key, value) VALUES ('expense_accno_id', (select id from account where accno = '5.110.01'));

 INSERT INTO defaults (setting_key, value) VALUES ('fxgain_accno_id', (select id from account where accno = '4.340'));

 INSERT INTO defaults (setting_key, value) VALUES ('fxloss_accno_id', (select id from account where accno = '5.340'));

 INSERT INTO defaults (setting_key, value) VALUES ('curr', 'PYG:USD:EUR');

 INSERT INTO defaults (setting_key, value) VALUES ('weightunit', 'kg');
--
commit;
UPDATE account
   SET tax = true
WHERE id
   IN (SELECT account_id
       FROM account_link
       WHERE description LIKE '%_tax');
