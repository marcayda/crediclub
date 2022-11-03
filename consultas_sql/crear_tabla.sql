CREATE TABLE CLIENTES(
	id int not null auto_increment PRIMARY KEY, 
    nombre varchar(40) not null,
    apellido_pat varchar(40) not null,
    apellido_mat varchar(40) not null,
    fecha_nac date not null, 
    rfc varchar(10) not null,
    ingresos_mens float not null,
    num_dep int not null,
    aprobado bit not null, 
    fecha_reg date not null
);

