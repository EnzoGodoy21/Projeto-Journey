CREATE DATABASE	Journey;
use Journey;

create table Usuario 
(
	idUsuario int primary key auto_increment,
    nomeUsuario varchar(30),
    sobrenome varchar(45),
    login varchar(45),
    senha varchar(16)
);