SELECT *
FROM ASIENTO_CONTABLE;

SELECT as_con_nro, as_con_descripcion, as_con_fecha, as_con_hora, as_con_usr
FROM asiento_contable
GROUP BY as_con_nro;

SELECT c.cuenta_desc CUENTA, a.as_cuenta_debeMonto DEBE, a.as_cuenta_haberMonto HABER, as_con_descripcion DETALLE
FROM asiento_contable a, cuentas c
WHERE c.cuenta_id = a.as_cuenta_debe
AND a.as_con_nro = 1
ORDER BY a.as_cuenta_haberMonto;

SELECT as_con_caja_id, as_con_nro, as_con_descripcion, as_cuenta_debeMonto, as_cuenta_haberMonto
FROM asiento_contable
WHERE as_con_caja_id = 119
AND	as_con_nro = 2;

SELECT as_con_descripcion
FROM asiento_contable
WHERE as_con_caja_id = 119
AND	as_con_nro = 2
AND as_cuenta_tipo = 3