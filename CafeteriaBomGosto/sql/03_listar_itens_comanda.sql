-- 2) Comandas e itens detalhados
SELECT 
    c.cod_comanda,
    c.data,
    c.mesa,
    c.cliente,
    ca.nome AS nome_cafe,
    ca.descricao,
    i.quantidade,
    ca.preco AS preco_unitario,
    (i.quantidade * ca.preco) AS preco_total
FROM Comanda c
JOIN Item_Comanda i ON c.cod_comanda = i.cod_comanda
JOIN Cardapio ca ON i.cod_cardapio = ca.cod_cardapio
ORDER BY c.data, c.cod_comanda, ca.nome;