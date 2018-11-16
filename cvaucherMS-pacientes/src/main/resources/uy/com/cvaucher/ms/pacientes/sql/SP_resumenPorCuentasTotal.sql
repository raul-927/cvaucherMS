DROP PROCEDURE IF EXISTS SP_resumenPorCuentasTotal;
DELIMITER //
CREATE PROCEDURE SP_resumenPorCuentasTotal(cuentaTipo VARCHAR(10))
BEGIN
 CREATE TEMPORARY TABLE tmp_haber
	SELECT as_con_caja_id, as_cuenta_haber cuenta_haber, SUM(as_cuenta_haberMonto) haber, as_cuenta_tipo tipo
	FROM asiento_contable
	GROUP BY as_cuenta_haber;
	
 CREATE TEMPORARY TABLE tmp_debe
		SELECT as_con_caja_id, as_cuenta_debe cuenta_debe, SUM(as_cuenta_debeMonto) debe, as_cuenta_tipo tipo
		FROM asiento_contable
		GROUP BY as_cuenta_debe;
	
	SELECT c.cuenta_desc cuenta, (d.debe - h.haber) total
	FROM caja ca, cuentas c, tmp_debe d, tmp_haber h
	WHERE c.cuenta_id = h.cuenta_haber 
	AND	c.cuenta_id = d.cuenta_debe
	AND d.as_con_caja_id = h.as_con_caja_id
	AND h.as_con_caja_id = ca.caja_id
	AND d.tipo = h.tipo
	AND d.tipo = cuentaTipo 
	GROUP BY c.cuenta_desc;

	DROP TABLE tmp_haber;
	DROP TABLE tmp_debe;
END //
DELIMITER ;