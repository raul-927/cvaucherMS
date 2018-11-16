DROP PROCEDURE IF EXISTS SP_resumenPorCuentasTotal;
DROP PROCEDURE IF EXISTS resumenPorCuentas;
DELIMITER //
CREATE PROCEDURE SP_resumenPorCuentasTotal()
BEGIN
 CREATE TEMPORARY TABLE tmp_haber
	SELECT as_cuenta_haber cuenta_haber, SUM(as_cuenta_haberMonto) haber
	FROM asiento_contable
	GROUP BY as_cuenta_haber;
	
 CREATE TEMPORARY TABLE tmp_debe
		SELECT as_cuenta_debe cuenta_debe, SUM(as_cuenta_debeMonto) debe
		FROM asiento_contable
		GROUP BY as_cuenta_debe;
	
	SELECT c.cuenta_desc cuenta, (h.haber - d.debe) total
	FROM cuentas c, tmp_debe d, tmp_haber h
	WHERE c.cuenta_id = h.cuenta_haber 
	AND	c.cuenta_id = d.cuenta_debe
	GROUP BY c.cuenta_desc;

	DROP TABLE tmp_haber;
	DROP TABLE tmp_debe;
END //
DELIMITER ;