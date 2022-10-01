INSERT INTO fornecedores(empresa,endereco)
VALUES ('LD_REFINADOS', 'CARLOS_AGENOR'), ('DOCE_VITA', 'RUGRA_SHIVANI'),
('JR3_DOCHE', 'PINHO_ARAUJO'), ('VITARELLA', 'VILLA_NOCHE'),
('PANIFICADORA_VJ', 'GEORGE_PEDRO'),('ARCOLOR', 'FLAVIANO_EUROLES'), 
('HONEY_BEE', 'AVENUE_HEET'), ('NOBRE_REFINADO', 'ALENCAR_OURO'), 
('ELLADERE', 'ERCOLUNA'), ('WILLLEY', 'AVENUE_VALE');
 
 INSERT INTO clientes(nome, sobrenome, telefone)
 VALUES ('JONAS' , 'SILVA_ALENCAR', 11982637456), 
 ('CAMILA' , 'ALMEIDA_JESUS', 11937465839), 
 ('CLAUDETE' , 'BATISTA_RAMOS', 11994739467), 
 ('RAFAEL' , 'ANDRADES_JUNIOR', 11937494026), 
 ('PEDRO' , 'MARTINS_SANTOS', 11938294648), 
 ('CARLA' , 'HOFFMAN', 11993728373), 
 ('EMILY' , 'CARDOSO_LEITE', 11963784047), 
 ('CAIKE' , 'JUNIOR_SILVA', 11938475960), 
 ('ROBERTO' , 'GABRIEL_GALENO', 11945374894), 
 ('JAQUELINE' , 'MARIA_CAMPOS', 11945347484);
 
 INSERT INTO cargos(nomeCargo)
 VALUES ('ATENDENTE'), ('CONFEITEIRO');
 
  INSERT INTO funcionarios(nome, sobrenome, dataNasc, cidade, cargoID)
 VALUES('CARLOS', 'SANTOS_JUNIOR', '1990-07-03', 'SAO_PAULO', 1), 
 ('HELOISA', 'CARLA_DOS_SANTOS', '1993-05-30', 'SAO_PAULO', 1),
 ('ELISETE', 'MARIA_MIRANDA', '1995-10-10', 'RIO_DE_JANEIRO', 1),
 ('MURILO', 'CARDOSO_MELO', '1998-12-04', 'RIO_DE_JANEIRO', 2),
 ('ENZO', 'SOARES	', '1970-03-09', 'RECIFE', 2),
 ('MARIA_CLARA', 'SILVA_CUNHA', '1991-12-10', 'SAO_PAULO', 2),
 ('GIOVANA', 'MENDES_GOMES	', '2002-08-20', 'SAO_PAULO', 2),
 ('FELIPE', 'GONCALVES_PINHO', '1990-05-12', 'BANHIA', 2);
 
 INSERT INTO ingredientes(nome, unidEstoque, unidPedidas)
 VALUES ('FERMENTO', '25', '20'), ('DOCE_DE_LEITE', '20', '50'), 
 ('CHOCOLATE', '30', '50'), ('CREME DE LEITE', '100', '200'), 
 ('AÇUCAR', '40', '20'), ('LEITE_CONDENSADO', '100', '200'), 
 ('SAL	', '30', '300'), ('OVO', '70', '150'), 
 ('LEITE_INTEGRAL', '60	', '200'), ('FARINHA_TRIGO', '10', '100');
 
 INSERT INTO contatoFornecedor( telefone, email, fornecedoresID)
 VALUES (11934687343,'LD_REFINADOS@GMAIL.COM', 1), 
 ( 11983745363,'DOCE_VITA@HOTMAIL.COM', 2), 
 (11984638404, 'JR3_DOCHE@GMAIL.COM', 3), 
 (11947586967, 'VITARELLA@GMAIL.COM', 4), 
 (11946597058, 'PANIFICADORA_VJ@GMAIL.COM', 5), 
 (11946587047, 'ARCOLOR@HOTMAIL.COM', 6), 
 (11972518495, 'HONEY_BEE@OUTLOOK.COM', 7), 
 (11946583626, 'NOBRE_REFINADO@OUTLOOK.COM', 8), 
 (11978349251, 'ELLADERE@OUTLOOK.COM', 9), 
 (11993649566, 'WILLEY@HOTMAIL.COM', 10) ;
 
 INSERT INTO funcclientes (clienteID, funcionarioID)
 VALUES (1, 3), (2, 2), (8, 1), 
 (5, 2), (4, 3), (6, 1), 
 (3, 2), (9, 3), (10, 1), (7, 2);
 
 INSERT INTO categorias (nome)
 VALUES ('BOLO'), ('TORTA'), ('RECHEADOS'), ('BRIGADEIRO'), ('BISCOITO'), ('SORVETE');
 
 
 INSERT INTO doces(categoriasID, nomeDoce, precoUnitario)
 VALUES (1,'BOLO DE CENOURA', 15.50),
 (1, 'BOLO DE FUBA', 15.50),
 (2,'TORTA DE FRANGO', 7.50),
 (2, 'QUICHE', 10.00),
 (3,'SONHO', 2.50),
 (3,'BAGUETE DE CHOCOLATE', 4.00),
 (5,'MACARRON',5.00),
 (5,'COOKIE', 5.50),
 (6,'PARFAIT', 24.50),
 (4,'BRIGADEIRO SEM LACTOSE', 7.50),
 (2,'TORTA DE MORANGO', 13.50),
 (1, 'BOLO DE SORVETE', 75.00);
 
DELETE FROM doces
WHERE docesID = 12;
 
 
  INSERT INTO fornecedorIngredientes(ingredientesID, fornecedoresID, qtdIngrediente, preco)
 VALUES (1, 3, 5, 30.00),
 (2, 1, 3, 20.00),
 (3, 7, 10, 80.00),
 (4, 4, 8, 60.00),
 (5, 9, 7, 45.00),
 (6, 6, 3, 30.00),
 (7, 2, 7, 65.00),
 (8, 8, 4, 23.00),
 (9, 10, 9, 78.00),
 (10, 5, 15, 120.00);
 
 


INSERT INTO pedidodoce(clienteID, docesID, nf, dataPedido, qtdDoce, precoTotalPedido)
 VALUES (1, 3, 1, '2022-05-28', 5, 75.00),
 (2, 1, 2, '2022-02-18', 3, 46.00),
 (3, 7, 3, '2022-08-04', 10, 50.00),
 (4, 4, 4, '2022-12-06', 8, 80.00),
 (5, 9, 5, '2022-03-15', 7, 171.50),
 (6, 6, 6, '2022-12-05', 3, 24.00),
 (7, 2, 7, '2022-04-22', 7, 10.00),
 (8, 8, 8, '2022-09-10', 4, 44.00),
 (9, 10, 9, '2022-07-22', 9, 67.50),
 (10, 5, 10, '2022-01-25', 15, 27.50);
 

 INSERT INTO ingredientesdoces(docesID, ingredientesID)
 VALUES(1,2), (2,3), (8,5), (5,2), (4,8), (6,1), (3,8), (7,9), (9,9), (10,1);
 
 #INSERT DO UPDATE #
 
 ALTER TABLE ingredientes
ADD uniMedida VARCHAR(20);
 
 UPDATE  ingredientes
 SET uniMedida = 'pote de 500g'
 WHERE ingredienteID = 1;
 
 UPDATE  ingredientes
 SET uniMedida = 'pote de 1 kg'
 WHERE ingredienteID = 2;
 
 UPDATE  ingredientes
 SET uniMedida = 'barra de 1kg'
 WHERE ingredienteID = 3;
 
 UPDATE  ingredientes
 SET uniMedida = 'pote 1kg'
 WHERE ingredienteID = 4;
 
 UPDATE  ingredientes
 SET uniMedida = 'pacote 1kg'
 WHERE ingredienteID = 5;
 
 UPDATE  ingredientes
 SET uniMedida = 'pote 395g'
 WHERE ingredienteID = 6;
 
 UPDATE  ingredientes
 SET uniMedida = 'pacote 1kg'
 WHERE ingredienteID = 7;
 
 UPDATE  ingredientes
 SET uniMedida = 'duzia'
 WHERE ingredienteID = 8;
 
 UPDATE  ingredientes
 SET uniMedida = 'caixa 1L'
 WHERE ingredienteID = 9;
 
 UPDATE  ingredientes
 SET uniMedida = 'pacote 1 kg'
 WHERE ingredienteID = 10;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 