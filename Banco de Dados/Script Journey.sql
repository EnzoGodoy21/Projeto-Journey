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
    nomeArquivo varchar(100)
);

create table playlist 
(
	idPlaylist int primary key auto_increment,
    nomePlaylist varchar(45)
);

create table biblioteca
(
	fkMusica int,
	fkUsuario int,
    foreign key (fkMusica)references musica(idMusica),
    foreign key (fkUsuario)references usuario(idUsuario),
    primary key (fkMusica, fkUsuario)
);

update musica set nomeArquivo = "Foo Fighters - The Pretender.mp3" where idMusica = 29;

truncate musica;
truncate usuario;

select * from musica;
select * from usuario;
select * from playlist;

