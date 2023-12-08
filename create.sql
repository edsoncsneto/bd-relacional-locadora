DROP TABLE IF EXISTS locacao_veiculo;
DROP TABLE IF EXISTS locacao;
DROP TABLE IF EXISTS seguro;
DROP TABLE IF EXISTS manutencao;
DROP TABLE IF EXISTS veiculo;
DROP TABLE IF EXISTS funcionario;
DROP TABLE IF EXISTS cliente_pf;
DROP TABLE IF EXISTS cliente_pj;
DROP TABLE IF EXISTS telefone_cliente;
DROP TABLE IF EXISTS cliente;

CREATE TABLE veiculo(
	placa VARCHAR(255) NOT NULL,
	cor VARCHAR(255) NOT NULL,
	marca VARCHAR(255) NOT NULL,
	categoria VARCHAR(255) NOT NULL,
	chassi CHAR(17) NOT NULL,
	modelo VARCHAR(255) NOT NULL,
	CONSTRAINT veiculo_pk PRIMARY KEY(placa)
);

CREATE TABLE seguro(
	apolice VARCHAR(255) NOT NULL,
	valor double precision NOT NULL,
	data_inicio DATE NOT NULL,
	data_final DATE NOT NULL,
	tipo_cobertura VARCHAR(255) NOT NULL,
	historico_sinistro VARCHAR(255) NOT NULL,
	franquia VARCHAR(255) NOT NULL,
	placa CHAR(7),
	CONSTRAINT seguro_pk PRIMARY KEY(apolice),
	CONSTRAINT placa_fk FOREIGN KEY(placa) 
		REFERENCES veiculo(placa)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE manutencao(
	tipo_manutencao VARCHAR(255) NOT NULL,
	data_manutencao DATE NOT NULL,
	ordem_de_servico VARCHAR(255) NOT NULL,
	placa CHAR(7),
	CONSTRAINT placa_fk FOREIGN KEY(placa)
		REFERENCES veiculo(placa)
		ON DELETE SET NULL
		ON UPDATE CASCADE,
	CONSTRAINT manutencao_pk PRIMARY KEY(ordem_de_servico, placa)
);

CREATE TABLE funcionario(
	matricula SERIAL NOT NULL,
	nome VARCHAR(255) NOT NULL,
	cpf CHAR(11) NOT NULL,
	quantidade_locacoes INTEGER DEFAULT 0,
	supervisor INTEGER DEFAULT NULL,
	CONSTRAINT funcionario_pk PRIMARY KEY(matricula),
	CONSTRAINT supervisor_fk FOREIGN KEY(supervisor)
		REFERENCES funcionario(matricula)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE cliente(
	cod_cliente SERIAL NOT NULL,
	bairro VARCHAR(255) NOT NULL,
	numero INTEGER NOT NULL,
	logradouro VARCHAR(255) NOT NULL,
	cidade VARCHAR(255) NOT NULL,
	uf CHAR(2) NOT NULL,
	cep CHAR(8) NOT NULL,
	CONSTRAINT cliente_pk PRIMARY KEY(cod_cliente)
);

CREATE TABLE cliente_pf(
	cod_cliente INTEGER NOT NULL,
	cpf CHAR(11) NOT NULL,
	nome VARCHAR(255) NOT NULL,
	cnh CHAR(10) NOT NULL,
	CONSTRAINT cliente_pf_pk PRIMARY KEY(cod_cliente),
	CONSTRAINT cliente_pf_fk FOREIGN KEY (cod_cliente)
		REFERENCES cliente(cod_cliente)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE cliente_pj(
	cod_cliente INTEGER NOT NULL,
	cnpj CHAR(14) NOT NULL,
	nome_fantasia VARCHAR(255) NOT NULL,
	razao_social VARCHAR(255) NOT NULL,
	CONSTRAINT cliente_pj_pk PRIMARY KEY(cod_cliente),
	CONSTRAINT cliente_pj_fk FOREIGN KEY (cod_cliente)
		REFERENCES cliente(cod_cliente)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE telefone_cliente(
	cod_cliente INTEGER NOT NULL,
	telefone VARCHAR(20) NOT NULL,
	CONSTRAINT telefone_cliente_pk PRIMARY KEY(cod_cliente, telefone),
	CONSTRAINT telefone_cliente_fk FOREIGN KEY (cod_cliente)
		REFERENCES cliente(cod_cliente)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE locacao(
	cod_locacao SERIAL NOT NULL,
	data_inicio TIMESTAMP NOT NULL,
	data_fim TIMESTAMP DEFAULT NULL,
	cod_cliente INTEGER,
	mat_funcionario INTEGER,
	CONSTRAINT locacao_pk PRIMARY KEY (cod_locacao),
	CONSTRAINT cod_cliente_fk FOREIGN KEY (cod_cliente)
		REFERENCES cliente(cod_cliente)
		ON DELETE SET NULL
		ON UPDATE CASCADE,
	CONSTRAINT mat_funcionario_fk FOREIGN KEY (mat_funcionario)
		REFERENCES funcionario(matricula)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE locacao_veiculo(
	cod_locacao INTEGER,
	placa VARCHAR(255),
	CONSTRAINT locacao_veiculo_pk PRIMARY KEY (cod_locacao, placa),
	CONSTRAINT cod_locacao_fk FOREIGN KEY (cod_locacao)
		REFERENCES locacao(cod_locacao)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	CONSTRAINT placa_fk FOREIGN KEY (placa)
		REFERENCES veiculo(placa)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

ALTER TABLE veiculo
ALTER COLUMN placa TYPE CHAR(7);

ALTER TABLE seguro
ALTER COLUMN placa TYPE CHAR(7);

ALTER TABLE manutencao
ALTER COLUMN placa TYPE CHAR(7);

ALTER TABLE locacao_veiculo
ALTER COLUMN placa TYPE CHAR(7);