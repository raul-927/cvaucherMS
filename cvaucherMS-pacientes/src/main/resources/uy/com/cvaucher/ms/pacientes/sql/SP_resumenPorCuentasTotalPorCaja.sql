DROP PROCEDURE IF EXISTS SP_resumenPorCuentasTotalPorCaja;
DELIMITER //
CREATE PROCEDURE SP_resumenPorCuentasTotalPorCaja(cuentaTipo VARCHAR(10), idCaja INT)
BEGIN
 CREATE TEMPORARY TABLE tmp_haber
	SELECT as_con_caja_id, as_cuenta_haber cuenta_haber, SUM(as_cuenta_haberMonto) haber, as_cuenta_tipo tipo
	FROM asiento_contable
	WHERE as_con_caja_id = (select max(as_con_caja_id)from asiento_contable)
	GROUP BY as_cuenta_haber;
	
 CREATE TEMPORARY TABLE tmp_debe
		SELECT as_con_caja_id, as_cuenta_debe cuenta_debe, SUM(as_cuenta_debeMonto) debe, as_cuenta_tipo tipo
		FROM asiento_contable
		WHERE as_con_caja_id = (select max(as_con_caja_id)from asiento_contable)
		GROUP BY as_cuenta_debe;
	
	SELECT c.cuenta_desc cuenta, (d.debe - h.haber) total, f.form_pag_tipo tipo
	FROM formas_de_pagos f, cuentas c, tmp_debe d, tmp_haber h
	WHERE c.cuenta_id = h.cuenta_haber 
	AND	c.cuenta_id = d.cuenta_debe
	AND c.cuenta_id = f.form_pag_cuenta
	AND d.as_con_caja_id = h.as_con_caja_id
	AND h.as_con_caja_id = idCaja
	AND d.tipo = h.tipo
	AND h.tipo = cuentaTipo 
	GROUP BY c.cuenta_desc, h.tipo;

	DROP TABLE tmp_haber;
	DROP TABLE tmp_debe;
END //
DELIMITER ;