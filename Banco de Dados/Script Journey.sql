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

create table bibliotecaPlaylist
(
	fkMusicaB int,
    fkUsuarioB int,
    fkPlaylist int,
    foreign key (fkMusicaB) references biblioteca(fkMusica),
    foreign key (fkUsuarioB) references biblioteca(fkUsuario),
    foreign key (fkPlaylist) references playlist(idPlaylist),
    primary key(fkMusicaB, fkUsuarioB, fkPlaylist)
);


-- update musica set CAMPO = "MUDANÇA" where idMusica = 0;

-- select musica.* from musica inner join biblioteca on fkMusica = idMusica
-- 					inner join usuario on fkUsuario = idUsuario and idUsuario = 1;		
                     
-- select * from bibliotecaPlaylist;

 select nomePlaylist from playlist inner join bibliotecaPlaylist on fkPlaylist = idPlaylist
 	   where fkUsuarioB = 
 	   (select idUsuario from usuario inner join biblioteca on fkUsuario = idUsuario group by idUsuario) group by nomePlaylist;

select * from musica;
select * from usuario;	
select * from playlist;
select * from biblioteca;
select * from bibliotecaPlaylist;

select musica.*, nomePlaylist from playlist inner join bibliotecaPlaylist on idPlaylist = fkPlaylist
						inner join biblioteca on fkMusicaB = fkMusica and fkUsuarioB = fkUsuario 
                        inner join musica on idMusica = fkMusica where fkUsuario = 2 and idPlaylist = 1;
											
select playlist.* from playlist inner join bibliotecaPlaylist on fkPlaylist = idPlaylist where fkUsuarioB = 2 group by nomePlaylist;

 SELECT count(distinct nomeMusica) as 'qtdMusica', count(distinct autor) as 'qtdAutor' FROM musica;
