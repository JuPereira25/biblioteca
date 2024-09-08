USE biblioteca;

CREATE TABLE administradores (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE usuarios (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE livros (
	id INT NOT NULL AUTO_INCREMENT,
    nome_livro VARCHAR(255) NOT NULL,
    data_publicacao DATE,
    numero_exemplares INT DEFAULT 1,
    PRIMARY KEY(id)
);

CREATE TABLE acervo (
	id INT NOT NULL AUTO_INCREMENT,
    autor VARCHAR(255) NOT NULL,
    genero VARCHAR(255) NOT NULL,
    editora VARCHAR(255) NOT NULL,
    nacionalidade VARCHAR(255) NOT NULL,
	livros_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (livros_id) REFERENCES livros(id)
);

CREATE TABLE reservas (
	id INT NOT NULL AUTO_INCREMENT,
    usuario_id INT NOT NULL,
    livros_id INT NOT NULL,
    data_reserva DATE NOT NULL,
    prazo_devolucao DATE,
    PRIMARY KEY(id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (livros_id) REFERENCES livros(id)
);

CREATE TABLE totem(
	id INT NOT NULL AUTO_INCREMENT,
    usuario_id INT NOT NULL,
    data_entrada TIMESTAMP NOT NULL,
    data_saida TIMESTAMP,
    PRIMARY KEY(id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Inserção de dados na tabela 'administradores'
INSERT INTO administradores (nome, sobrenome, email, senha)
VALUES ('João', 'Silva', 'joao@email.com', 'senha123');

-- Inserção de dados na tabela 'usuarios'
INSERT INTO usuarios (nome, sobrenome, endereco, telefone, email, senha)
VALUES ('Luana', 'Mendes', 'Rua A, 123', '123456789', 'luanamendes@email.com', 'senha789');

-- Inserção de dados na tabela 'acervo'
INSERT INTO acervo (livros_id, autor, genero, editora, nacionalidade)
VALUES (1, 'J.R.R. Tolkien', 'Fantasia', 'Allen & Unwin', 'Britânico');

-- Inserção de dados na tabela 'livros'
INSERT INTO livros (nome_livro, data_publicacao, numero_exemplares)
VALUES ('Allen & Unwin', '2024-01-01', 5);

-- Inserção de dados na tabela 'reservas'
INSERT INTO reservas (usuario_id, livros_id, data_reserva, prazo_devolucao)
VALUES (1, 1, '2024-09-07', '2024-09-14');

-- Inserção de dados na tabela 'totem'
INSERT INTO totem (usuario_id, data_entrada, data_saida)
VALUES (1, '2024-09-07 10:00:00', '2024-09-07 12:00:00');

SHOW TABLES;
