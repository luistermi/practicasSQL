select max(saldo) from usuarios
where sexo = 'M';

select nombre, telefono from usuarios
where marca in ('NOKIA','BLACKBERRY','SONY');

select count(*) from usuarios
where saldo = 0 or activo = 0;

select usuario from usuarios
where nivel between 1 and 3;

select telefono from usuarios where saldo <= 300;

select sum(saldo) from usuarios where compania = 'NEXTEL';

select compania, count(*) nrousuarios from usuarios
group by compania;

select nivel, count(*) nrousuarios from usuarios
group by nivel;

select usuario from usuarios where nivel = 2;

select * from usuarios;

select email from usuarios
where email like '%@gmail%';

select sum(saldo)/count(*) saldopromedio from usuarios
where marca = 'NOKIA';

select marca from usuarios
group by marca
order by marca desc;

select sexo, count(*) from usuarios
group by sexo;

create table clientes (
  codigo int unsigned auto_increment,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  codigoProvincia tinyint unsigned,
  telefono varchar(11),
  primary key(codigo)
 );
 
 create table provincias(
  codigo tinyint unsigned auto_increment,
  nombre varchar(20),
  primary key (codigo)
 );
 
 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');
 insert into provincias (nombre) values('Misiones');
 insert into provincias (nombre) values('Salta');
 insert into provincias (nombre) values('Buenos Aires');
 insert into provincias (nombre) values('Neuquen');

 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Marcos', 'Colon 111', 'Córdoba',1,'null');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Perez Ana', 'San Martin 222', 'Cruz del Eje',1,'4578585');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Garcia Juan', 'Rivadavia 333', 'Villa Maria',1,'4578445');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Perez Luis', 'Sarmiento 444', 'Rosario',2,null);
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Pereyra Lucas', 'San Martin 555', 'Cruz del Eje',1,'4253685');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Gomez Ines', 'San Martin 666', 'Santa Fe',2,'0345252525');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Torres Fabiola', 'Alem 777', 'Villa del Rosario',1,'4554455');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Carlos', 'Irigoyen 888', 'Cruz del Eje',1,null);
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Ramos Betina', 'San Martin 999', 'Cordoba',1,'4223366');
 insert into clientes (nombre,domicilio,ciudad,codigoProvincia,telefono)
  values ('Lopez Lucas', 'San Martin 1010', 'Posadas',4,'0457858745');
  
  
  select * from provincias;
  
  select * from clientes;
  
  select distinct provincias.nombre from provincias
  left outer join clientes on provincias.codigo = clientes.codigoProvincia
  where clientes.codigoProvincia is null;
  
  select distinct provincias.nombre from provincias
  inner join clientes on provincias.codigo = clientes.codigoProvincia;
  
  
  