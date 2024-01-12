CREATE TABLE Aeroporto(
ID_Aeroporto INT
	IDENTITY (1,1),
Città VARCHAR (30),
Nazione VARCHAR (30),
NumPiste INT
CONSTRAINT PK_Aeroporto PRIMARY KEY (ID_Aeroporto)
);

INSERT INTO Aeroporto
VALUES
('Treviso','Italia',3),
('Parigi','Francia',5),
('Torino','Italia',4),
('Bologna','Italia',6),
('Londa','UK',5),
('Madrid','Spagna',NULL)


CREATE TABLE Aereo(
TipoAereo VARCHAR(15),
NumPasseggeri INT,
Qtamerci INT
CONSTRAINT PK_Aereo PRIMARY KEY (TipoAereo)
)

INSERT INTO Aereo
VALUES
('ATR', 3,15),
('DH8', 5,30),
('Boeing 717', 15,45),
('BOEING 737', 40,100)



CREATE TABLE Volo(
ID_Volo INT
	IDENTITY (1,1),
GiornoSett DATE,
CittaPart VARCHAR(30),
OraPart TIME,
CittaArr VARCHAR (30),
OraArr TIME,
TipoAereo VARCHAR (15)
CONSTRAINT PK_Volo PRIMARY KEY(ID_volo)
CONSTRAINT FK_Volo_Aereo FOREIGN KEY (TipoAereo)
	REFERENCES Aereo(TipoAereo)
)

INSERT INTO Volo
VALUES
('2023-01-12','Treviso','06:00:00','Parigi','07:00:00','ATR'),
('2023-01-13','Parigi','07:00:00','Torino','08:00:00','DH8'),
('2023-01-14','Torino','08:00:00','Bologna','09:00:00','Boeing 717'),
('2023-01-15','Bologna','06:00:00','Londra','07:00:00','ATR'),
('2023-01-12','Madrid','07:00:00','Treviso','08:00:00','BOEING 737')
INSERT INTO Volo
VALUES
('2023-01-12','Buffalo','07:00:00','Venezia','08:00:00','BOEING 737')

SELECT Città
FROM Aeroporto
WHERE NumPiste IS NULL

SELECT TipoAereo
FROM Volo
WHERE CittaPart = 'Torino'

SELECT CittaPart
FROM Volo
WHERE CittaArr = 'Bologna'

SELECT CittaPart, CittaArr
FROM Volo
WHERE ID_Volo = 1

/*
Il tipo di aereo, il giorno della settimana, l’orario di partenza 
la cui città di partenza inizia per B e contiene O 
e la cui città di arrivo termina con A e contiene E
*/

SELECT TipoAereo, GiornoSett, OraPart 
FROM Volo
WHERE CittaPart LIKE 'B%O' AND CittaArr LIKE '%E%A'
