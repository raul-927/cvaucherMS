--pago_efectivo

SELECT	cu.cuenta_id, cu.cuenta_desc, cu.cuenta_tipo, pe.pago_ef_cedula, pe.pago_ef_importe, tr.trat_descripcion,
				asi.as_con_nro, asi.as_cuenta_debe, asi.as_cuenta_debeMonto, asi.as_cuenta_haber, asi.as_cuenta_haberMonto, 
				asi.as_cuenta_tipo, asi.as_con_descripcion
FROM 		cuentas cu, asiento_contable asi,pago_efectivo pe, tratamiento tr
WHERE 	cu.cuenta_id = asi.as_cuenta_debe
AND			asi.as_con_caja_id = pe.pago_ef_caja_id
AND 		asi.as_cuenta_tipo = 3
AND 		asi.as_con_descripcion = tr.trat_descripcion;


--pago_tarjeta
SELECT	cu.cuenta_id, cu.cuenta_desc, cu.cuenta_tipo, pt.tarj_pac_cedula, pt.tarj_importe,  tr.trat_descripcion,
				asi.as_con_nro, asi.as_cuenta_debe, asi.as_cuenta_debeMonto, asi.as_cuenta_haber, asi.as_cuenta_haberMonto, 
				asi.as_cuenta_tipo, asi.as_con_descripcion
FROM 		cuentas cu, asiento_contable asi,pago_tarjetas pt, tratamiento tr
WHERE 	asi.as_con_caja_id = pt.tarjeta_caja_id
AND			asi.as_cuenta_tipo = 1
AND			pt.tarjeta_caja_id = 119
AND			cu.cuenta_desc = asi.as_con_descripcion
GROUP BY cu.cuenta_desc
 		

