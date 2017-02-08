create table tuteur(
idtuteur integer,
nom varchar(45) not null,
prenom varchar(45) not null,
username varchar(45) not null,
password varchar(45) not null,
PRIMARY KEY (idtuteur)
);


create table projet(
idprojet integer,
description varchar(45),
titre varchar(45) not null,
annee date not null,
lienpdf varchar(45) not null,
idtuteur integer,
PRIMARY KEY (idprojet),
FOREIGN KEY (idtuteur) REFERENCES tuteur(idtuteur)
);


create table groupe(
idgroupe integer,
idprojet integer,
PRIMARY KEY (idgroupe),
FOREIGN KEY (idprojet) REFERENCES projet(idprojet)
);

create table etudiant(
idetudiant integer,
nom varchar(45) not null,
prenom varchar(45) not null,
username varchar(45) not null,
password varchar(45) not null,
idgroupe integer,
PRIMARY KEY (idetudiant),
FOREIGN KEY (idgroupe) REFERENCES groupe(idgroupe)
);

create table choix(
idchoix integer,
idprojet integer,
idgroupe integer,
PRIMARY KEY (idprojet,idgroupe,idchoix),
FOREIGN KEY (idgroupe) REFERENCES groupe(idgroupe),
FOREIGN KEY (idprojet) REFERENCES projet(idprojet)
);

create table notes(
idnotes integer,
idgroupe integer,
idtuteur integer,
soutenance float,
rapport float,
final float,
PRIMARY KEY (idtuteur,idgroupe),
FOREIGN KEY (idgroupe) REFERENCES groupe(idgroupe),
FOREIGN KEY (idtuteur) REFERENCES tuteur(idtuteur)
);

create table jury(
idjury integer,
nom1 varchar(45) not null,
nom2 varchar(45) not null,
nom3 varchar(45) not null,
PRIMARY KEY (idjury)
);

create table archives(
idarchives integer,
PRIMARY KEY (idarchives)
);

create table historique(
idhistorique integer,
PRIMARY KEY (idhistorique)
);

create table admin(
idadmin integer,
nom varchar(45) not null,
prenom varchar(45) not null,
username varchar(45) not null,
password varchar(45) not null,
PRIMARY KEY (idadmin)

);


