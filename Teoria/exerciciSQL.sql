-- 1. Fer les sentencies SQL de creació de les taules.
CREATE TABLE AVIO(
    idAvio VARCHAR(10) NOT NULL,
    nom VARCHAR(50) NOT NULL,
    tipus VARCHAR(10) NOT NULL,
    nPass INTEGER NOT NULL,
    aeroport varchar(50) NOT NULL,
    PRIMARY KEY(idAvio),
    FOREIGN KEY(aeroport) REFERENCES AEROPORT(nom) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE AEROPORT(
    nom VARCHAR(50) NOT NULL,
    ciutat VARCHAR(50) NOT NULL,
    nPistes INTEGER NOT NULL,
    PRIMARY KEY(nom),
    FOREIGN KEY(ciutat) REFERENCES CIUTAT(nom) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE CIUTAT(
    nom VARCHAR(50) NOT NULL,
    nHabitants INTEGER NOT NULL,
    port CHAR(2) NOT NULL default 'No',
    PRIMARY KEY(nom)
)ENGINE = InnoDB;
-- 2. Fer les sentencies necessàries per eliminar totes les taules.

-- 3. Tornar a fer les sentencies SQL de creació de les taules.
-- 4. Fer una sentencia SQL per tal d’afegir un nou atribut a la taula CIUTAT. Aquest nou atribut serà el país al que pertany la ciutat.
-- 5. Fer una sentència SQL per eliminar l’atribut afegit a la sentencia anterior.
-- 6. Fer les sentencies SQL necessàries per inserir totes les dades a totes les taules.
-- 7. Fer les sentencies SQL necessàries per eliminar totes les dades de la taula CIUTAT.
-- 8. FerlessentenciesSQLnecessàriespertornarainserirtoteslesdadesatotesles taules.
insert into ciutat values ('Barcelona',2000000,'Si');
insert into ciutat values ('Madrid',3000000,'No');
insert into ciutat values ('París',4000000,'No');
insert into ciutat values ('Londres',5000000, 'No');
insert into aeroport values ('El prat','Barcelona',4);
insert into aeroport values ('Barajas','Madrid',5);
insert into aeroport values ('Charles de Gaulle','París',7);
insert into aeroport values ('Orly','París',4);
insert into aeroport values ('Gatwick','Londres',6);
insert into avio values ('DC-1024', 'DC-10', 50, 'El Prat');
insert into avio values ('BG-2048', 'Boeing 737', 200, 'Barajas');
insert into avio values ('BG2-128', 'Boeing 747', 500, 'El Prat');
insert into avio values ('CN-64', 'Cessna 45', 10, 'Orly');
insert into avio values ('BG2-512', 'Boeing 747', 550, Null);
insert into avio values ('DC-4096', 'DC-10', 100, 'Charles de Gaulle');
insert into avio values ('BG-256', 'Boeing 737', 250, Null);
insert into avio values ('BG2-8192', 'Boeing 747', 500, 'Charles de Gaulle');
-- 9. Fer una sentencia SQL per afegir 5 passatgers a l’avió amb identificador “CN-64”
-- 10.Fer una sentencia SQL per obtenir totes les dades de tots els aeroports
-- 11.Fer una sentencia SQL per obtenir el nom de totes les ciutats
-- 12.Fer una sentencia SQL per obtenir els identificadors de tots els avions que tinguin 500 passatgers
-- 13.Fer una sentencia SQL per obtenir els identificadors de tots els avions i la ciutat on estan aterrats
-- 14.Fer una sentencia SQL per obtenir el nom dels aeroports de Barcelona i París
-- 15.Fer una sentencia SQL per obtenir els identificadors dels avions que estan volant (o sigui, que no hi son a cap aeroport)
-- 16.Fer una sentencia SQL per obtenir els noms dels aeroports que tinguin 4, 5 o 6 pistes SQL
-- 17.Fer una sentencia SQL per obtenir els identificadors de tots els avions que tinguin més de 200 i menys de 550 passatgers
-- 18.Fer una sentencia SQL per obtenir els identificadors dels avions de tipus “Boeing”
-- 19. Fer una sentencia SQL per obtenir el nom de les ciutats dels aeroports de “El Prat”, “Orly” i “Gatwick”
-- 20.Fer una sentencia SQL per obtenir tots els tipus d’avió, sense que es repeteix cap tipus d’avió
-- 21.Fer una sentencia SQL per obtenir la mitjana de passatgers que transporten tots els avions.
-- 22.Fer una sentencia SQL per obtenir quantes pistes té l’aeroport que té més pistes.
-- 23.Fer una sentencia SQL per obtenir el número d’aeroports que hi ha a la base de dades
-- 24.Fer una sentencia SQL per obtenir el nom de les ciutats, ordenats pel seu número d’habitants. Primer ha de mostrar la que més habitants té.
-- 25.Fer una sentencia SQL per obtenir quants aeroports hi ha a cada ciutat.
-- 26.Fer una sentència SQL per obtenir quants avions hi ha a cada aeroport on hi hagi dos o més avions aterrats.
-- 27.Fer una sentencia SQL per obtenir l’identificador de tots els avions, i la ciutat on estan aterrats.
-- 28.Fer una sentencia SQL per obtenir els noms dels aeroports que estan en ciutats de més de 3 milions d’habitants i que no tenen port.
-- 29.Fer una sentencia SQL per obtenir el tipus de tots els avions de 100 passatgers o més. Dels que estiguin en algun aeroport, també cal obtenir el número de pistes de l’aeroport on estan aterrats.
-- 30.Fer una sentencia SQL per obtenir el nom de l’aeroport que te més pistes.
-- 31. Fer una sentencia SQL per obtenir els identificadors dels avions que estan aterrats a aeroports de la ciutat que te menys habitants.
-- 32.Fer una sentencia SQL per obtenir quants passatgers porten els avions que estan en els aeroports que tenen menys pistes
-- 33.Fer una sentencia SQL per obtenir el nom de tots els aeroports i el nom de totes les ciutats.
-- 34.Fer una sentencia SQL per obtenir el nom dels aeroports on no hi ha aterrat cap avió.