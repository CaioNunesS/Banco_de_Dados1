CREATE VIEW estoque_ingredientes
AS
SELECT i.ingredienteID,
	i.nome AS "Ingredientes",
    f.preco AS "Preço Ingrediente",
	i.unidEstoque AS "Estoque",
	i.unidPedidas AS "Pedido",
	i.uniMedida,
    c.nome AS "Categorias",
    d.docesID,
    d.nomeDoce,
    e.empresa AS "Fornecedores",
    t.telefone AS "ContatoFornecedor"
    
FROM ingredientes AS i
LEFT JOIN fornecedoringredientes AS f
ON i.ingredienteID = f.fornecedorIngredientesID

LEFT JOIN doces AS d
ON d.docesID = f.ingredientesID

LEFT JOIN categorias AS c
ON d.docesID = c.categoriasID 

LEFT JOIN fornecedores AS e
ON e.fornecedoresID = i.ingredienteID

LEFT JOIN contatoFornecedor AS t
ON t.contatoFornecedorID = e.fornecedoresID;

Select
*
From
estoque_ingredientes;

drop view  estoque_ingredientes

