-- Création de la table Adherent
CREATE TABLE Adherent (
    Numero_adherent INT PRIMARY KEY,
    Nom VARCHAR(50),
    Prenom VARCHAR(50),
    Date_de_naissance DATE,
    Addresse VARCHAR(100),
    Ville VARCHAR(50),
    Telephone VARCHAR(15),
    Benevole VARCHAR(50)
);

-- Création de la table Adhésion
CREATE TABLE Adhesion (
    Numero_adherent INT,
    Annee INT,
    Date_adhesion DATE,
    Montant DECIMAL(10, 2),
    Don DECIMAL(10, 2),
    Moyen_paiement VARCHAR(50),
    PRIMARY KEY (Numero_adherent, Annee),
    FOREIGN KEY (Numero_adherent) REFERENCES Adherent(Numero_adherent)
);

-- Création de la table Ville
CREATE TABLE Ville (
    Nom_ville VARCHAR(50) PRIMARY KEY,
    Latitude_ville DECIMAL(9, 6),
    Longitude_ville DECIMAL(9, 6),
    Etat VARCHAR(50)
);
