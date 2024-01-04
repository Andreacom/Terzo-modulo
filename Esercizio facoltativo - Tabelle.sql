CREATE TABLE Prodotti(
IDprodotto INT,
NomeProdotto CHAR(20),
Prezzo DEC,
CONSTRAINT PK_Prodotti PRIMARY KEY (IDprodotto)
)

INSERT INTO Prodotti
VALUES
	(1,'Tablet', 300),
	(2, 'Mouse', 20),
	(3, 'Tastiera', 25),
	(4, 'Monitor', 180),
	(5, 'HHD', 90),
	(6, 'SSD', 200),
	(7, 'RAM', 100),
	(8, 'Router', 80),
	(9, 'Webcam', 45),
	(10, 'GPU', 1250),
	(11, 'Trackpad', 500),
	(12, 'Techmagazine', 5),
	(13, 'Martech', 50)
	
CREATE TABLE Ordini(
IDordine INT,
IDprodotto INT,
Quantità DEC (8,2),
CONSTRAINT PK_Ordini PRIMARY KEY (IDordine),
CONSTRAINT FK_Ordini_Prodotti FOREIGN KEY (IDprodotto)
REFERENCES Prodotti (IDprodotto)
)
INSERT INTO Ordini
VALUES
	(1,2,10),
	(2,6,2),
	(3,5,3),
	(4,1,1),
	(5,9,1),
	(6,4,2),
	(7,11,6),
	(8,10,2),
	(9,3,3)
INSERT INTO Ordini	
VALUES	
	(10,3,1),
	(11,2,1)

CREATE TABLE Clienti(
IDcliente INT,
Nome CHAR (15),
Email CHAR (25),
CONSTRAINT PK_Cliente PRIMARY KEY (IDcliente)
)

INSERT INTO Clienti
VALUES
	(1,'Antonio', NULL),
	(2, 'Battista', 'battista@mailmail.it'),
	(3,'Maria', 'maria@posta.it'),
	(4,'Franca','franca@lettere.it'),
	(5,'Ettore',NULL),
	(6,'Arianna','arianna@posta.it'),
	(7,'Pietro','pietro@lavoro.it')

--ESERCIZIO 3

SELECT *
FROM Prodotti
WHERE Prezzo>50

SELECT *
FROM Clienti
WHERE Email LIKE 'A%'

SELECT*
FROM Prodotti
WHERE NomeProdotto LIKE '%tech%'

SELECT *
FROM Clienti
WHERE Email <> 'NULL'

SELECT *
FROM Prodotti
WHERE NomeProdotto LIKE 'M%e'

