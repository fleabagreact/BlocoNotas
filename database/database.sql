CREATE DATABASE IF NOT EXISTS BlocoNotas;

USE BlocoNotas;

CREATE TABLE IF NOT EXISTS usuarios (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email TEXT NOT NULL,
    senha TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS notas (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    titulo TEXT NOT NULL,
    descricao TEXT,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES usuarios(id)
);

CREATE TABLE IF NOT EXISTS listas(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    titulo TEXT NOT NULL,
    descricao TEXT,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES usuarios(id)
);


