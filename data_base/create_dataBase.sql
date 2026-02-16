CREATE DATABASE	db_controleDeFrota;
USE db_controleDeFrota;

create table registro_uso(
id_uso INT AUTO_INCREMENT NOT NULL,
condutor VARCHAR(100) NOT NULL,
data_uso DATE NOT NULL,
veiculo_usado VARCHAR(30) NOT NULL,
motivo_uso TEXT NOT NULL,
PRIMARY KEY (id_uso)
);

select * from registro_uso;