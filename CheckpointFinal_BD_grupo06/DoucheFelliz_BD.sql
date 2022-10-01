CREATE DATABASE IF NOT EXISTS DocheFelliz;
USE DocheFelliz;


CREATE TABLE IF NOT EXISTS ingredientes(
  ingredienteID INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR (40),
  unidEstoque SMALLINT,
  unidPedidas SMALLINT
);

CREATE TABLE IF NOT EXISTS clientes (
	clienteID INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(40) ,
  sobrenome VARCHAR(50),
  telefone VARCHAR(15) 
);

CREATE TABLE IF NOT EXISTS categorias(
  categoriasID INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(40) 
);

CREATE TABLE IF NOT EXISTS cargos(
  cargoID INT AUTO_INCREMENT PRIMARY KEY,
  nomeCargo VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS funcionarios (
  funcionariosID INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(30) NULL,
  sobrenome VARCHAR(30) NULL,
  dataNasc DATE,
cidade VARCHAR(30) NULL,
  cargoID INT,
  FOREIGN KEY (cargoID) REFERENCES cargos(cargoID)
);


CREATE TABLE IF NOT EXISTS fornecedores (
  fornecedoresID INT PRIMARY KEY AUTO_INCREMENT,
  empresa VARCHAR(40),
  endereco VARCHAR(60)
);


CREATE TABLE IF NOT EXISTS doces (
  docesID INT PRIMARY KEY AUTO_INCREMENT,
  categoriasID INT ,
  nomeDoce VARCHAR(30),
  precoUnitario DOUBLE,
  FOREIGN KEY (categoriasID) REFERENCES categorias(categoriasID)
);


CREATE TABLE IF NOT EXISTS fornecedorIngredientes(
  fornecedorIngredientesID INT PRIMARY KEY AUTO_INCREMENT,
  ingredientesID INT ,
  fornecedoresID INT ,
  qtdIngrediente INT,
  preco DECIMAL(5,2),
  FOREIGN KEY (ingredientesID) REFERENCES ingredientes(ingredienteID),
  FOREIGN KEY (fornecedoresID) REFERENCES fornecedores(fornecedoresID)
);

CREATE TABLE IF NOT EXISTS pedidoDoce(
  pedidoDoceID INT PRIMARY KEY AUTO_INCREMENT,
  clienteID INT ,
  docesID INT ,
  nf INT,
  dataPedido DATE,
  qtdDoce INT,
  precoTotalPedido DECIMAL(5,2),
  FOREIGN KEY (clienteID) REFERENCES clientes(clienteID),
  FOREIGN KEY (docesID) REFERENCES doces(docesID)
);


CREATE TABLE IF NOT EXISTS contatoFornecedor(
	contatoFornecedorID INT PRIMARY KEY AUTO_INCREMENT,
  telefone CHAR(11) NOT NULL,
  email VARCHAR(50) NOT NULL,
  fornecedoresID INT,
  FOREIGN KEY (fornecedoresID) REFERENCES fornecedores(fornecedoresID)
  
);

CREATE TABLE IF NOT EXISTS funcClientes (
	funcClientesID INT PRIMARY KEY AUTO_INCREMENT,
  clienteID INT NOT NULL,
  funcionarioID INT NOT NULL,
  FOREIGN KEY (clienteID) REFERENCES clientes(clienteID),
  FOREIGN KEY (funcionarioID) REFERENCES funcionarios(funcionariosID)
);

CREATE TABLE IF NOT EXISTS ingredientesDoces (
	ingredientesDocesID INT PRIMARY KEY AUTO_INCREMENT,
  docesID INT NOT NULL,
  ingredientesID INT NOT NULL,
  FOREIGN KEY (docesID) REFERENCES doces(docesID),
  FOREIGN KEY (ingredientesID) REFERENCES ingredientes(ingredienteID)
);


