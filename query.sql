--Obtendo o modelo, cor e placa dos carros da BMW
SELECT modelo, placa, cor
FROM veiculo
WHERE marca='BMW';

--Ordenando uma consulta na tabela veículo, onde marca está na ordem ascendente e a coluna modelo em ordem descendente
SELECT *
FROM veiculo
ORDER BY marca ASC, modelo DESC;

--Obtém informações completas sobre cada locação, incluindo detalhes do veículo associado.
SELECT locacao.cod_locacao, locacao.data_inicio, locacao.data_fim,
       veiculo.placa, veiculo.cor, veiculo.marca, veiculo.modelo
FROM locacao
JOIN locacao_veiculo ON locacao.cod_locacao = locacao_veiculo.cod_locacao
JOIN veiculo ON locacao_veiculo.placa = veiculo.placa;

--Retorna informações sobre locações, incluindo detalhes do veículo associado a cada locação e o nome do cliente associado à locação.
-- E usando o COALESCE para pegar independente se o cliente é PF ou PJ.
SELECT locacao.cod_locacao, locacao.data_inicio, locacao.data_fim,
       veiculo.placa, veiculo.cor, veiculo.marca, veiculo.modelo,
       COALESCE(cliente_pf.nome, cliente_pj.razao_social) AS nome_cliente
FROM locacao
JOIN locacao_veiculo ON locacao.cod_locacao = locacao_veiculo.cod_locacao
JOIN veiculo ON locacao_veiculo.placa = veiculo.placa
LEFT JOIN cliente_pf ON locacao.cod_cliente = cliente_pf.cod_cliente
LEFT JOIN cliente_pj ON locacao.cod_cliente = cliente_pj.cod_cliente;

--EXEMPLO ACIMA SEM O COALESCE
SELECT locacao.cod_locacao, locacao.data_inicio, locacao.data_fim,
       veiculo.placa, veiculo.cor, veiculo.marca, veiculo.modelo,
       cliente_pf.nome AS nome_cliente_pf, cliente_pj.nome_fantasia AS nome_cliente_pj
FROM locacao
JOIN locacao_veiculo ON locacao.cod_locacao = locacao_veiculo.cod_locacao
JOIN veiculo ON locacao_veiculo.placa = veiculo.placa
LEFT JOIN cliente_pf ON locacao.cod_cliente = cliente_pf.cod_cliente
LEFT JOIN cliente_pj ON locacao.cod_cliente = cliente_pj.cod_cliente;


--LEFT JOIN para garantir que todas as locações sejam incluídas. E utiliza COALESCE para obter o nome do cliente apropriado, seja ele uma pessoa física ou jurídica.
SELECT locacao.cod_locacao, locacao.data_inicio, locacao.data_fim,
       COALESCE(cliente_pf.nome, cliente_pj.razao_social) AS nome_cliente
FROM locacao
LEFT JOIN cliente_pf ON locacao.cod_cliente = cliente_pf.cod_cliente
LEFT JOIN cliente_pj ON locacao.cod_cliente = cliente_pj.cod_cliente;

--EXEMPLO ACIMA SEM O COALESCE
SELECT locacao.cod_locacao, locacao.data_inicio, locacao.data_fim,
       cliente_pf.nome AS nome_cliente_pf, cliente_pj.razao_social AS nome_cliente_pj
FROM locacao
LEFT JOIN cliente_pf ON locacao.cod_cliente = cliente_pf.cod_cliente
LEFT JOIN cliente_pj ON locacao.cod_cliente = cliente_pj.cod_cliente;

--GROUP BY
-- contar o número de locações para cada modelo de veículo e cor.
SELECT veiculo.modelo, veiculo.cor,
       COUNT(locacao.cod_locacao) AS total_locacoes
FROM locacao
JOIN locacao_veiculo ON locacao.cod_locacao = locacao_veiculo.cod_locacao
JOIN veiculo ON locacao_veiculo.placa = veiculo.placa
GROUP BY veiculo.modelo, veiculo.cor;

--GROUP BY Having 
--agrupa as locações pelo modelo do veículo, e a cláusula HAVING filtra os resultados para incluir apenas os modelos que têm mais de 1 locação.
SELECT veiculo.modelo, COUNT(locacao.cod_locacao) AS total_locacoes
FROM locacao
JOIN locacao_veiculo ON locacao.cod_locacao = locacao_veiculo.cod_locacao
JOIN veiculo ON locacao_veiculo.placa = veiculo.placa
GROUP BY veiculo.modelo
HAVING COUNT(locacao.cod_locacao) > 1;


