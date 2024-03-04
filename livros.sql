CREATE DATABASE LojaLivros;
USE LojaLivros;

);
CREATE TABLE Autores (
    AutorID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Nacionalidade VARCHAR(100),
    AnoNascimento INT
);
INSERT INTO Autores (AutorID, Nome, Nacionalidade, AnoNascimento) VALUES
(1, 'Machado de Assis', 'Brasileira', 1839),
(2, 'George Orwell', 'Britânica', 1903),
(3, 'J.K. Rowling', 'Britânica', 1965);

CREATE TABLE Livros (
    LivroID INT PRIMARY KEY,
    Titulo VARCHAR(255),
    AnoPublicacao INT,
    AutorID INT,
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID)
);
INSERT INTO Livros (LivroID, Titulo, AnoPublicacao, AutorID) VALUES
(1, 'Dom Casmurro', 1899, 1),
(2, '1984', 1949, 2),
(3, 'Harry Potter e a Pedra Filosofal', 1997, 3);

SELECT Livros.Titulo, Autores.Nome 
FROM Livros
INNER JOIN Autores ON Livros.AutorID = Autores.AutorID;

SELECT Autores.Nome, Livros.Titulo 
FROM Autores
LEFT JOIN Livros ON Autores.AutorID = Livros.AutorID;


