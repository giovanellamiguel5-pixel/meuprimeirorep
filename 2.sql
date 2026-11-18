create database aulaquinze;

use aulaquinze;


create table produtos
(
sku char(5) primary key,
nome varchar(50),
categoria varchar(30),
quantidade int
);
INSERT INTO produtos VALUES
('A0012', 'Mouse Óptico', 'Informática', 20),
('A0015', 'Cadeira', 'Escritório', 12),
('A0115', 'TV 32 Polegadas', 'Eletrônico', 41),
('A2215', 'Aparador de Grama', 'Jardinagem', 18),
('A3110', 'Teclado', 'Informática', 16),
('A1201', 'Mesa 1,30 x 1,0', 'Escritório', 6),
('A2101', 'Monitor 22', 'Informática', 31),
('A0008', 'Estante Metálica', 'Escritório', 9),
('A1212', 'Tesoura para Jardim', 'Jardinagem', 8),
('A4101', 'Notebook', 'Informática', 16);


SELECT * FROM produtos;

use aulaquinze;


SELECT COUNT(sku) FROM produtos;

SELECT SUM(quantidade) FROM produtos;

SELECT AVG(quantidade) FROM produtos;

SELECT MAX(quantidade) FROM produtos;

SELECT categoria, SUM(quantidade)
FROM produtos
GROUP BY categoria
having count(*) > 10;

