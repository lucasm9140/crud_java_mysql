Create database dblojaetec;
Use dblojaetec;

create table usuarios(
id_user int primary key auto_increment,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);

create table clientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(15) not null,
emailcli varchar(50)
);

create table ordem_servico(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
servico varchar(150) not null,
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references clientes(idcli)
);


