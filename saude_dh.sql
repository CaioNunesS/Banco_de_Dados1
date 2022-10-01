CREATE DATABASE IF NOT EXISTS saude_dh;
USE saude_dh;

CREATE TABLE IF NOT EXISTS paciente
(
  nPacienteId INT NOT NULL,
  nCartaoSaude INT NULL,
  strNome VARCHAR(50) NOT NULL,
  strSobrenome VARCHAR(100) NULL,
  PRIMARY KEY (nPacienteId)
);

INSERT INTO paciente (nPacienteId, nCartaoSaude, strNome, strSobrenome)
VALUES(1, NULL, '', 'Passos');

INSERT INTO paciente (nPacienteId, nCartaoSaude, strNome, strSobrenome)
VALUES(2, NULL, 'Kevin', 'Passos');

SELECT
	*
FROM paciente;

UPDATE paciente
SET strNome = 'Daniel'
WHERE nPacienteId = 1;

DELETE
FROM paciente
WHERE nPacienteId = 2; 
  
CREATE TABLE IF NOT EXISTS especialidade
(
  nEspecialidadeId INT NOT NULL PRIMARY KEY,
  strNome VARCHAR (100)  
);
  
CREATE TABLE IF NOT EXISTS medico
(
  nMedicoId INT NOT NULL,
  strNome VARCHAR(40) NULL,
  strSobrenome VARCHAR(100) NULL,
  nEspecialidadeId INT NULL,
  CONSTRAINT PK_medico_nMedicoId PRIMARY KEY (nMedicoId),
  FOREIGN KEY (nEspecialidadeId) REFERENCES especialidade (nEspecialidadeId)
);
  
CREATE TABLE IF NOT EXISTS consulta
(
  nConsultaId INT NOT NULL,
  nPacienteId INT NULL,
  nMedicoId INT NULL,
  dtConsulta DATE,
  hrConsulta TIME,
  PRIMARY KEY (nConsultaId),
  CONSTRAINT FK_paciente_consulta_nPacienteId FOREIGN KEY (nPacienteId) REFERENCES paciente (nPacienteId),
  CONSTRAINT FK_medico_consulta_nMedicoId FOREIGN KEY (nMedicoId) REFERENCES medico (nMedicoId)
);