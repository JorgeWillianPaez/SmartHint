create database smarthint;

use smarthint;

create table Clientes(
	Id int AUTO_INCREMENT,
    NomeClienteRazaoSocial varchar(200),
    Email varchar(200),
    Telefone varchar(20),
    DataNascimento Date,
    Senha varchar(20),
    TipoPessoa varchar(20),
    CPFCNPJ varchar(20),
    InscricaoEstadual varchar(20),
    Isento boolean,
    Genero varchar(20),
    Bloqueado boolean,
    DataCadastro Date,
    primary key(Id)
);

SELECT * FROM Clientes;

INSERT INTO Clientes (NomeClienteRazaoSocial, Email, Telefone, DataNascimento, Senha, TipoPessoa, CPFCNPJ, InscricaoEstadual, Isento, Genero, Bloqueado, DataCadastro)
VALUES 
    ('João Silva', 'joao@example.com', '(11)12345-6789', '1980-01-01', 'senha123', 'Física', '123.456.789-00', '123.456.789.123', FALSE, 'Masculino', TRUE, '2024-03-01'),
    ('Maria Santos', 'maria@example.com', '(22)23456-7890', '1985-02-02', 'senha456', 'Física', '234.567.890-11', '', TRUE, 'Feminino', FALSE, '2024-03-02'),
    ('Carlos Oliveira', 'carlos@example.com', '(33)34567-8901', '1990-03-03', 'senha789', 'Física', '345.678.901-22', '345.678.901.234', FALSE, 'Masculino', FALSE, '2024-03-03'),
    ('Ana Pereira', 'ana@example.com', '(44)45678-9012', '1988-04-04', 'senhaabc', 'Física', '456.789.012-33', '', TRUE, 'Feminino', FALSE, '2024-03-04'),
    ('Pedro Almeida', 'pedro@example.com', '(55)56789-0123', '1992-05-05', 'senha123', 'Física', '567.890.123-44', '567.890.123.345', FALSE, 'Masculino', TRUE, '2024-03-05'),
    ('Mariana Lima', 'mariana@example.com', '(11)67890-1234', '1993-06-06', 'senha456', 'Física', '678.901.234-55', '', TRUE, 'Feminino', FALSE, '2024-03-06'),
    ('Paulo Sousa', 'paulo@example.com', '(22)78901-2345', '1991-07-07', 'senha789', 'Física', '789.012.345-66', '789.012.345.456', FALSE, 'Masculino', TRUE, '2024-03-07'),
    ('Luana Costa', 'luana@example.com', '(33)89012-3456', '1994-08-08', 'senhaabc', 'Física', '890.123.456-77', '', TRUE, 'Feminino', FALSE, '2024-03-08'),
    ('Rafael Santos', 'rafael@example.com', '(44)90123-4567', '1989-09-09', 'senha123', 'Física', '901.234.567-88', '901.234.567.567', FALSE, 'Masculino', FALSE, '2024-03-09'),
    ('Carla Oliveira', 'carla@example.com', '(55)01234-5678', '1996-10-10', 'senha456', 'Física', '012.345.678-99', '', TRUE, 'Feminino', FALSE, '2024-03-10'),
    ('Roberto Silva', 'roberto@example.com', '(11)12345-6789', '1997-11-11', 'senha123', 'Física', '123.456.789-00', '123.456.789.678', FALSE, 'Masculino', TRUE, '2024-03-11'),
    ('Aline Costa', 'aline@example.com', '(22)23456-7890', '1985-12-12', 'senha456', 'Física', '234.567.890-11', '', TRUE, 'Feminino', FALSE, '2024-03-12'),
    ('Marcos Oliveira', 'marcos@example.com', '(33)34567-8901', '1990-01-13', 'senha789', 'Física', '345.678.901-22', '345.678.901.789', FALSE, 'Masculino', FALSE, '2024-03-13'),
    ('Juliana Santos', 'juliana@example.com', '(44)45678-9012', '1988-02-14', 'senhaabc', 'Física', '456.789.012-33', '', TRUE, 'Feminino', FALSE, '2024-03-14'),
    ('Gustavo Almeida', 'gustavo@example.com', '(55)56789-0123', '1995-03-15', 'senha123', 'Física', '567.890.123-44', '567.890.123.890', FALSE, 'Masculino', FALSE, '2024-03-15'),
    ('Empresa A Ltda', 'empresa.a@example.com', '(11)12345-6789', NULL, 'senha123', 'Jurídica', '12.345.678/0001-01', '123.456.789.012', FALSE, '', TRUE, '2023-01-10'),
    ('Empresa B S/A', 'empresa.b@example.com', '(22)23456-7890', NULL, 'senha456', 'Jurídica', '98.765.432/0001-01', '987.654.321.098', FALSE, '', FALSE, '2023-02-15'),
    ('Empresa C ME', 'empresa.c@example.com', '(33)34567-8901', NULL, 'senha789', 'Jurídica', '45.678.901/0001-01', '456.789.012.345', FALSE, '', TRUE, '2023-03-20'),
    ('Empresa D EIRELI', 'empresa.d@example.com', '(44)45678-9012', NULL, 'senhaabc', 'Jurídica', '32.165.498/0001-01', '321.654.987.654', FALSE, '', FALSE, '2023-04-25'),
    ('Empresa E Ltda', 'empresa.e@example.com', '(55)56789-0123', NULL, 'senhabcd', 'Jurídica', '56.789.012/0001-01', '567.890.123.456', FALSE, '', FALSE, '2023-05-30'),
    ('Empresa F S/A', 'empresa.f@example.com', '(11)67890-1234', NULL, 'senha123', 'Jurídica', '12.345.678/0001-01', '123.456.789.012', FALSE, '', FALSE, '2023-06-05'),
    ('Empresa G ME', 'empresa.g@example.com', '(22)78901-2345', NULL, 'senha456', 'Jurídica', '98.765.432/0001-01', '987.654.321.098', FALSE, '', TRUE, '2023-07-10'),
    ('Empresa H EIRELI', 'empresa.h@example.com', '(33)89012-3456', NULL, 'senha789', 'Jurídica', '45.678.901/0001-01', '456.789.012.345', FALSE, '', FALSE, '2023-08-15'),
    ('Empresa I Ltda', 'empresa.i@example.com', '(44)90123-4567', NULL, 'senhaabc', 'Jurídica', '32.165.498/0001-01', '321.654.987.654', FALSE, '', FALSE, '2023-09-20'),
    ('Empresa J S/A', 'empresa.j@example.com', '(55)01234-5678', NULL, 'senhabcd', 'Jurídica', '56.789.012/0001-01', '567.890.123.456', FALSE, '', FALSE, '2023-10-25'),
    ('Empresa K ME', 'empresa.k@example.com', '(11)12345-6789', NULL, 'senha123', 'Jurídica', '12.345.678/0001-01', '123.456.789.012', FALSE, '', FALSE, '2023-11-30'),
    ('Empresa L EIRELI', 'empresa.l@example.com', '(22)23456-7890', NULL, 'senha456', 'Jurídica', '98.765.432/0001-01', '987.654.321.098', FALSE, '', FALSE, '2023-12-05'),
    ('Empresa M Ltda', 'empresa.m@example.com', '(33)34567-8901', NULL, 'senha789', 'Jurídica', '45.678.901/0001-01', '456.789.012.345', FALSE, '', TRUE, '2024-01-10'),
    ('Empresa N S/A', 'empresa.n@example.com', '(44)45678-9012', NULL, 'senhaabc', 'Jurídica', '32.165.498/0001-01', '321.654.987.654', FALSE, '', FALSE, '2024-02-15'),
    ('Empresa O ME', 'empresa.o@example.com', '(55)56789-0123', NULL, 'senhabcd', 'Jurídica', '56.789.012/0001-01', '567.890.123.456', FALSE, '', TRUE, '2024-03-20');

