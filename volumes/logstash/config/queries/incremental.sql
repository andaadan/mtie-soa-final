SELECT
	j.journal_id, j.action_type, 
	j.factura, b.codCliente, b.fechaFactura, 
	b.formaPago, b.subtotal, b.iva, b.total,
	b.planta, b.vendedor
FROM sales.facturas_journal j
LEFT JOIN sales.facturas b ON b.factura = j.factura
WHERE j.journal_id > :sql_last_value
	AND j.action_time < NOW()
ORDER BY j.journal_id