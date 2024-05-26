use constructionxpert;

create table Projets(
   id_Proj integer not null  primary key auto_increment,
   nom_proj varchar(40),
   description varchar(300),
   date_debut varchar(40),
   date_fin varchar(40),
   budget  float 
);

create table Tâches(
   id_Tach integer not null  primary key auto_increment,
   id_Proj integer not null,
   date_debut varchar(40),
   date_fin varchar(40),
   description varchar(300),
   statu  varchar(60) not null,
   FOREIGN KEY (id_Proj) REFERENCES Projets(id_Proj)  ON DELETE CASCADE
);

create table Ressources(
   id_Ress integer not null primary key auto_increment,
   id_Tach integer not null,
   nom_Ress varchar(40),
   typee varchar(40),
   quantité  float ,
   Nom_fournisseur  varchar(60),
   cin_fournisseur varchar(30),
   FOREIGN KEY (id_Tach) REFERENCES Tâches(id_Tach) ON DELETE CASCADE
);


