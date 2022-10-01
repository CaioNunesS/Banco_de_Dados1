CREATE TABLE IF NOT EXISTS usuario(
idUsuario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nomeUsuario VARCHAR(50) NOT NULL,
dataNasc DATE NOT NULL,
sexo TINYINT NOT NULL,
email VARCHAR(120) NOT NULL,
senha VARCHAR(25) NOT NULL
);

CREATE TABLE IF NOT EXISTS playlist(
idPlaylist INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
idUsuario INT NOT NULL,
titulo VARCHAR(50) NOT NULL,
qtdaCancoes INT NOT NULL,
dataCriacao DATETIME,
FOREIGN KEY (idUsuario) REFERENCES usuario (idUsuario) 
);

CREATE TABLE IF NOT EXISTS playlistCancao(
idPlaylistCancao INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
idCancao INT NOT NULL,
idPlaylist INT NOT NULL,
FOREIGN KEY (idCancao) REFERENCES cancoes (idCancao),
FOREIGN KEY (idPlaylist) REFERENCES playlist (idPlaylist)
);

CREATE TABLE IF NOT EXISTS cancoes(
idCancao INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(50),
duracao DOUBLE,
qtdaReproducao INT NOT NULL,
qtdaLikes INT NOT NULL,
idAlbum INT NOT NULL,
FOREIGN KEY (idAlbum) REFERENCES album (idAlbum)
);

CREATE TABLE IF NOT EXISTS album(
idAlbum INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(50) NOT NULL,
idArtista INT NOT NULL,
FOREIGN KEY (idArtista) REFERENCES artista (idArtista)
);

CREATE TABLE IF NOT EXISTS artista(
idArtista INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
sobrenome VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS genero(
idGenero INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
genero VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS generoCancao(
idGeneroCancao INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
idCancao INT NOT NULL,
idGenero INT NOT NULL,
FOREIGN KEY (idCancao) REFERENCES cancoes (idGenero),
FOREIGN KEY (idGenero) REFERENCES genero (idGenero)
);

ALTER TABLE usuario
MODIFY sexo CHAR(1) NOT NULL; 

INSERT INTO usuario(nomeUsuario, dataNasc, sexo, email, senha)
VALUES ('Caio Nunes', '1998-05-04', 'm', 'caiogrb@gmail.com', '********' );

INSERT INTO usuario(nomeUsuario, dataNasc, sexo, email, senha)
VALUES ('joao', '1998-05-03', 'm', 'caio123@gamil.com', '********');

INSERT INTO usuario(nomeUsuario, dataNasc, sexo, email, senha)
VALUES ('maria', '1998-05-02', 'f' ,'mariajose@gmai.com', '********');

INSERT INTO album(titulo, idArtista)
VALUES ('Abaixo de Zero:Hello Hell', '3');

INSERT INTO album(titulo, idArtista)
VALUES ('O Menino que Queria Ser Deus', '2');

INSERT INTO album(titulo, idArtista)
VALUES ('SABOTAGE', '1');

INSERT INTO artista(nome, sobrenome)
VALUES ('BLACK', 'ALIEN');

INSERT INTO artista(nome, sobrenome)
VALUES ('Gustavo', 'DJONGA');

INSERT INTO artista(nome, sobrenome)
VALUES ('Mestre', 'SABOTAGE');

INSERT INTO cancoes(titulo, duracao, qtdaReproducao, qtdaLikes, idAlbum )
VALUES ('CANAO FOI TAO BOM', 5.30, 20852644, 100000, 1 );

INSERT INTO cancoes(titulo, duracao, qtdaReproducao, qtdaLikes, idAlbum )
VALUES ('JUNHO DE 94', 5.29, 35346535, 200000, 2 );

INSERT INTO cancoes(titulo, duracao, qtdaReproducao, qtdaLikes, idAlbum )
VALUES ('CARTA PRA AMY', 4.22, 20892644, 100000, 3 );



