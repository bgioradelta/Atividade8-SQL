-- Inserção de dados de exemplo
INSERT INTO Cardapio (nome, descricao, preco) VALUES
('Espresso', 'Café puro e forte', 5.00),
('Cappuccino', 'Café com leite vaporizado e espuma', 7.50),
('Latte', 'Café com leite vaporizado', 6.50),
('Mocha', 'Café com chocolate e leite', 8.00);

INSERT INTO Comanda (data, mesa, cliente) VALUES
('2025-10-20', 1, 'Luís'),
('2025-10-20', 2, 'Bruno'),
('2025-10-21', 3, 'Tarsila');

INSERT INTO Item_Comanda (cod_comanda, cod_cardapio, quantidade) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 1),
(3, 2, 1),
(3, 4, 2);