CREATE DATABASE	Journey;
use Journey;

create table Usuario 
(
	idUsuario int primary key auto_increment,
    nomeUsuario varchar(30),
    sobrenome varchar(45),
    login varchar(45) unique,
    senha varchar(16)
);

create table musica 
(
	idMusica int primary key auto_increment,
    nomeMusica varchar(50),
    genero varchar(45),
    autor varchar(45),
    nomeArquivo varchar(60)
);

create table playlist 
(
	idPlaylist int primary key auto_increment,
    nomePlaylist varchar(45)
);

create table musica
(
	idMusica int primary key auto_increment,
    nomeMusica varchar(60),
    genero varchar(45),
    autor varchar(45),
    nomeArquivo varchar(60)
);


truncate musica;
truncate usuario;

select * from musica;
select * from usuario;
select * from playlist;
