create database filmes
default character set utf8mb4
default collate utf8mb4_general_ci;

CREATE TABLE diretores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nacionalidade VARCHAR(100)
);

CREATE TABLE generos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE filmes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    ano_lancamento INT,
    sinopse TEXT,
    id_diretor INT,
    id_genero INT,
    FOREIGN KEY (id_diretor) REFERENCES diretores(id),
    FOREIGN KEY (id_genero) REFERENCES generos(id)
);