DELIMITER $$

CREATE PROCEDURE sp_nfClienteNomeEDoce
(
p_nf int
)

BEGIN

SELECT 
pedidodoce.nf,
clientes.nome,
doces.nomeDoce
FROM pedidodoce
LEFT JOIN clientes
ON clientes.clienteID = pedidodoce.pedidoDoceID
LEFT JOIN doces
ON doces.docesID = clientes.clienteID
WHERE pedidodoce.nf = p_nf;

END $$
DELIMITER ;

CALL sp_nfClienteNomeEDoce(6);