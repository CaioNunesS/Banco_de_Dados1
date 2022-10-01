

  CREATE TABLE IF NOT EXISTS canal (
  idCanal INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45),
  descricao TEXT,
  dataCriacao DATETIME,
  usuario_IdUsuario INT,
  PRIMARY KEY (idCanal)
);
ALTER TABLE canal
ADD FOREIGN KEY (usuario_IdUsuario) REFERENCES usuario (idUsuario);

CREATE TABLE IF NOT EXISTS playlist(
	idPlaylist INT(11),
  nome VARCHAR(45),
  dataCriacao DATETIME,
  privado SMALLINT(6),
  Usuario_idUsuario INT(11),
  PRIMARY KEY (idPlaylist)
);
ALTER TABLE playlist
ADD FOREIGN KEY (Usuario_idUsuario) REFERENCES usuario (idUsuario);

CREATE TABLE IF NOT EXISTS avatar (
	idAvatar INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR (45) NULL,
  urlimagem VARCHAR(100),
  PRIMARY KEY (idAvatar)
);

CREATE TABLE IF NOT EXISTS pais (
	idPais INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR (100) NULL,
  PRIMARY KEY (idPais)
);

CREATE TABLE IF NOT EXISTS usuario (
  idUsuario INT NOT NULL AUTO_INCREMENT ,
  nome VARCHAR (45) NULL,
  email VARCHAR (45) NULL,
  senha VARCHAR (45) NULL,
  dataNascimento DATETIME NULL,
  cep VARCHAR (45) NULL,
  Pais_idPais INT NULL,
  Avatar_idAvatar INT NULL,
  PRIMARY KEY (idUsuario),
  FOREIGN KEY (Pais_idPais) REFERENCES pais(idPais),
  FOREIGN KEY (Avatar_idAvatar) REFERENCES avatar(idAvatar)  
);


CREATE TABLE IF NOT EXISTS video(
idVideo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
usuario_IdUsuario INT NOT NULL,
titulo VARCHAR(100) NOT NULL,
descricao TEXT NOT NULL,
tamanho DOUBLE NOT NULL,
nomeArquivo VARCHAR(100) NOT NULL,
duracao DOUBLE NOT NULL,
imagem VARCHAR (100) NOT NULL,
qtdaReproducoes INT NOT NULL,
qtdaLikes INT NOT NULL,
qtdaDislikes INT NOT NULL,
privado SMALLINT NOT NULL,
dataPublicacao DATETIME,
FOREIGN KEY (usuario_idUsuario) REFERENCES usuario (idUsuario)
);
 
CREATE TABLE IF NOT EXISTS playlits_video(
video_idVideo INT NOT NULL,
playlist_idPlaylist INT NOT NULL,
FOREIGN KEY (video_idVideo) REFERENCES video(idVideo),
FOREIGN KEY (playlist_idPlaylist) REFERENCES playlist (idPlaylist)
);