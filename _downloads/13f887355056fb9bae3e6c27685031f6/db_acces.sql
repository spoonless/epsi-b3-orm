
drop table if exists Utilisateur_Droit;
drop table if exists Droit;
drop table if exists Utilisateur;

create table Utilisateur (
  id int primary key auto_increment,
  login varchar(50) not null,
  dateInscription date not null,
  actif boolean not null
) engine = InnoDB;

create table Droit (
  id int primary key auto_increment,
  libelle varchar(50) not null
) engine = InnoDB;

create table Utilisateur_Droit(
  id_utilisateur int not null,
  id_droit int not null,
  primary key (id_utilisateur, id_droit),
  foreign key fk_utilisateur(id_utilisateur) references Utilisateur(id),
  foreign key fk_droit(id_droit) references Droit(id)
) engine = InnoDB;

insert into Utilisateur (login, dateInscription, actif)
values
('doe', '2000-12-25', true),
('spoonless', '2017-01-26', true),
('vincent', '2018-06-03', true);

insert into Droit (libelle)
values
('connexion'),
('lecture'),
('ecriture'),
('suppression');

insert into Utilisateur_Droit (id_utilisateur, id_droit)
values
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3);

