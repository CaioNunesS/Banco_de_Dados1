 #1 Categoria e produtos 

SELECT
CategoriaID,
Descricao,
CategoriaNome,
Imagem
 FROM categorias;
 
 SELECT 
CategoriaNome,
Descricao
FROM categorias;

SELECT 
ProdutoID,
ProdutoNome,
ProvedorID,
CategoriaID,
PrecoUnitario,
QuantidadePorUnidade,
UnidadesEstoque,
UnidadesPedidas,
NivelReabastecimento,
Descontinuado
FROM produtos;

SELECT 
Descontinuado = 1
FROM produtos;

SELECT 
ProdutoNome
FROM produtos
WHERE ProvedorID = 8;

SELECT 
ProdutoNome
FROM produtos
WHERE PrecoUnitario BETWEEN 10 AND 22;
 
 
SELECT
*
FROM produtos
WHERE UnidadesEstoque < NivelReabastecimento;
 
 
 SELECT
*
FROM produtos
WHERE UnidadesEstoque < NivelReabastecimento
AND UnidadesPedidas = 0;
 
 # PRODUTOS - 
 
 SELECT
*
FROM produtos
ORDER BY PrecoUnitario DESC;

SELECT
*
FROM produtos
ORDER BY PrecoUnitario DESC
LIMIT 5;


SELECT
*
FROM produtos
ORDER BY UnidadesEstoque DESC
LIMIT 10;
 
 
 #2 Fatura - Diego

SELECT
	*
FROM faturas
	ORDER BY DataFatura ASC;
  
SELECT
	*
FROM faturas
	WHERE PaisEnvio LIKE "USA" AND FormaEnvio NOT LIKE 3
	ORDER BY DataFatura ASC;
  
SELECT
	*
FROM faturas
	WHERE ClienteID LIKE "GOURL"
	ORDER BY DataFatura ASC;

SELECT
	*
FROM faturas
	WHERE EmpregadoID LIKE 2
    OR EmpregadoID LIKE 3
    OR EmpregadoID LIKE 5
    OR EmpregadoID LIKE 8
    OR EmpregadoID LIKE 9
	ORDER BY DataFatura ASC;
 
 
 #3 detalhe fatura 
 
 SELECT 
	FaturaId,
    ProdutoID,
    Quantidade 
FROM detalhefatura;

SELECT 
	FaturaId,
    ProdutoID,
    Quantidade 
FROM detalhefatura
ORDER BY FaturaId DESC;

SELECT 
	FaturaId,
    ProdutoID,
    Quantidade 
FROM detalhefatura
WHERE Quantidade BETWEEN 50 AND 100
ORDER BY FaturaId DESC;

SELECT 
	FaturaId AS Fatura,
    ProdutoID AS Produto,
    PrecoUnitario * Quantidade AS Total 
FROM detalhefatura;
 
 
 
 #4 Clientes 
 
 
SELECT
		Contato,
    Empresa,
    Titulo,
    Pais
FROM clientes
		ORDER BY Pais ASC;
 

SELECT
	 	Contato,
    Empresa,
    Titulo,
    Pais
FROM clientes
		WHERE Titulo LIKE 'Owner'
		ORDER BY Pais ASC;
 

SELECT
		Contato,
    Empresa,
    Titulo,
    Pais
FROM clientes
		WHERE Contato LIKE 'C%'
		ORDER BY Pais ASC;
 



















