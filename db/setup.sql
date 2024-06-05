USE datasheet;

CREATE TABLE dados_tempo (
	    id INT NOT NULL AUTO_INCREMENT,
	    tempo TIMESTAMP NULL,
	    PRIMARY KEY (id)
);

CREATE TABLE tabela_destino (
	    id INT NOT NULL AUTO_INCREMENT,
	    nome VARCHAR(255) NULL,
	    campanha VARCHAR(255) NULL,
	    ts_estado TIME NULL,
	    ts_login TIME NULL,
	    estado VARCHAR(255) NULL,
	    pausa VARCHAR(255) NULL,
	    pausa_ultima VARCHAR(255) NULL,
	    ts_total_talk TIME NULL,
	    ts_total_wrap TIME NULL,
	    ts_total_wait TIME NULL,
	    nomeDNS VARCHAR(255),
	    PRIMARY KEY (id)
);

CREATE TABLE tabela_transferencia (
	    unidadeNum VARCHAR(100) NULL,
	    unidade VARCHAR(255) NULL,
	    segmentoNum VARCHAR(100) NULL,
	    segmento VARCHAR(255) NULL,
	    seg_icc VARCHAR(100) NULL,
	    produto VARCHAR(255) NULL,
	    suporte VARCHAR(45) NULL,
	    qualificacaoiccNum VARCHAR(100) NULL,
	    qualificacaoicc VARCHAR(100) NULL,
	    transfCHAT VARCHAR(100) NULL,
	    ura VARCHAR(45) NULL,
	    filaDestino VARCHAR(20) NULL,
	    Email VARCHAR(255) NULL
);

CREATE TABLE priorizacao (
    	    nome VARCHAR(500) NULL,
    	    cpf VARCHAR(11) NULL,
    	    prioridade VARCHAR(5) NULL,
    	    fila VARCHAR(5) NULL,
    	    segmento VARCHAR(255) NULL,
            unidade VARCHAR(255) NULL
);

CREATE TABLE clientes_fila (
	    campanha VARCHAR(80) NULL, 
	    fila VARCHAR(80) NULL, 
	    telefone VARCHAR(45) NULL,
	    ts_entrada TIME NULL
);

-- Crie o usuário
CREATE USER 'pythonConnector'@'%' IDENTIFIED BY 'Python@connect123';

-- Conceda privilégios ao usuário no banco de dados currentTS
GRANT ALL PRIVILEGES ON currentTS.* TO 'pythonConnector'@'%';

-- Atualize os privilégios
FLUSH PRIVILEGES;
