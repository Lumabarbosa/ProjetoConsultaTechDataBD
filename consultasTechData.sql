# Seleção de dados da tabela transação
SELECT * FROM Transacoes;

# Renomeando colunas
SELECT 
    ID_Transacao AS ID_Transacao,
    Data AS Data,
    Valor AS Valor
FROM Transacoes;

# Filtragem com where para valores > 100
SELECT *
FROM Transacoes
WHERE Valor > 100.00;

# Ordenação com ordenação ORDER BY
SELECT * 
FROM Transacoes
ORDER BY valor DESC;

# Agregações funções SQL
SELECT 
    AVG(Valor) AS Media,
    MAX(Valor) AS Valor_Maximo,
    MIN(Valor) AS Valor_Minimo,
    COUNT(*) AS Total_Transacoes
FROM Transacoes;

# Agrupamento com cláusulas GROUP BY
SELECT 
    Produto,
    AVG(Valor) AS Media_Valor_Por_Produto
FROM Transacoes
GROUP BY Produto;

# Consulta combinada
SELECT
	Categoria,
    COUNT(*) AS Total_Produtos_Vendidos,
    SUM(Valor) AS Valor_Total_Vendas,
    AVG(Valor) AS Media_Valor_Por_Transacao
FROM Transacoes
GROUP BY Categoria;