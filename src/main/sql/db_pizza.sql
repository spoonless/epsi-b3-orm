drop table if exists DetailCommande;
drop table if exists Commande;
drop table if exists Pizza_Ingredient;
drop table if exists Ingredient;
drop table if exists Pizza;
drop table if exists Categorie;

create table Categorie (
  id int primary key auto_increment,
  nom varchar(50) not null
) engine = InnoDB;

create table Pizza (
  id int primary key auto_increment,
  nom varchar(50) not null,
  prix int(4) not null,
  disponible boolean not null,
  categorie_id int,
  foreign key fk_categorie(Categorie_id) references Categorie(id)
) engine = InnoDB;

create table Ingredient (
  id int primary key auto_increment,
  nom varchar(50) not null
) engine = InnoDB;

create table Pizza_Ingredient (
  pizza_id int not null,
  ingredient_id int not null,
  primary key (pizza_id, ingredient_id),
  foreign key fk_pizza(pizza_id) references Pizza(id),
  foreign key fk_ingredient(ingredient_id) references Ingredient(id)
) engine = InnoDB;

create table Commande (
  id int primary key auto_increment,
  nom varchar(250) not null,
  telephone varchar(250) not null,
  dateEmission datetime not null,
  enAttente boolean not null
) engine = InnoDB;

create table DetailCommande (
  id int primary key auto_increment,
  pizza_id int,
  commande_id int,
  foreign key fk_commande_pizza(pizza_id) references Pizza(id),
  foreign key fk_commande(commande_id) references Commande(id)
) engine = InnoDB;

insert into Categorie (nom)
values
('base tomate'),
('base crème'),
('exotique');

insert into Pizza (nom, prix, disponible, categorie_id)
values
('Margherita', 950, 1, 1),
('Regina', 1200, 1, 1),
('Trois fromages', 1450, 1, 1),
('Calzone', 1340, 0, 1),
('Orientale', 1530, 1, 2);

insert into Ingredient (nom)
values
('fromage'),
('jambon'),
('champignons'),
('fromage de chèvre'),
('bleu'),
('oeuf'),
('chorizo'),
('ananas'),
('oignons');

insert into Pizza_Ingredient (pizza_id, ingredient_id)
values
(1, 1),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 4),
(3, 5),
(4, 6),
(4, 1),
(4, 2),
(5, 7),
(5, 8),
(5, 9),
(5, 1);

