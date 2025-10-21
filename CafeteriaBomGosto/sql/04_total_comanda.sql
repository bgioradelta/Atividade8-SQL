-- 3) Comandas com valor total
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
ORDER BY c.data;