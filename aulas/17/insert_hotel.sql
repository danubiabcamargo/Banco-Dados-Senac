	#Consultas sem JOINS
-- Consulte todos os clientes de São Paulo (SP)
SELECT * FROM cliente
WHERE estadoCliente =  'SP';

-- Selecionar hospedagens com mais de 3 pessoas e desconto igual a 0 
SELECT COUNT(*) AS Hospedagens
FROM hospedagem
WHERE qtdPessoas > 3;

-- Selecionar telefones de clientes com ID 1 ou 2, limitando a 2 resultados
SELECT * FROM telefone;
SELECT telefone
FROM telefone
WHERE codCliente IN (1,2)
LIMIT 2;
	#auxilio no chatGPT na parte do WHERE e para INSERIR o LIMIT

-- Selecionar chalés com capacidades entre 4 e 6, ordenaos por valor em alta estação
SELECT * FROM chale;
SELECT *
FROM chale
WHERE capacidade BETWEEN 4 AND 6
ORDER BY valorAltaEstacao ASC;
	# BETWEEN 4 AND 6 é usado para especificar que a capacidade deve estar entre 4 e 6, incluindo ambos os limites.
#NÃO CONSEGUI na parte do between eu utilizei  IN (4,5) pedi ao chatGPT para corrigir

-- Selecione todos os itens que contenham "de" na descrição, pulando os 2 primeiros resultados
SELECT * FROM item;
SELECT item
FROM descricaoItem
WHERE descricaoItem = "de";

#NÃO CONSEGUI FINALIZAR


# Consultas com JOINS
-- Selecioar detalhes da hospedagem, incluindo informações do cliente
-- Selecionar chalés com os itens associados
-- Selecionar serviços utilizados em uma hospedagem
-- Consultar os clientes com seus telefones
-- Selecionar chalés ocupados em uma data específica