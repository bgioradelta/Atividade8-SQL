-- 4) Comandas com mais de um tipo de café
SELECT 
    c.cod_comanda,
    c.data,
    c.mesa,
    c.cliente,
    SUM(i.quantidade * ca.preco) AS valor_total
FROM Comanda c
JOIN Item_Comanda i ON c.cod_comanda = i.cod_comanda
JOIN Cardapio ca ON i.cod_cardapio = ca.cod_cardapio
GROUP BY c.cod_comanda, c.data, c.mesa, c.cliente
HAVING COUNT(i.cod_cardapio) > 1
ORDER BY c.data;