-- Colaboradores do departamento de TI que possuem um salário superior a R$ 4.500.
SELECT nomecolaborador, salario, id_departamento 
FROM TabelaColaboradores
WHERE salario > 4.500 AND id_departamento = 'D03';

-- Clientes que nasceram antes de 1990 ou que residem no estado de São Paulo.
SELECT nome, datanascimento, estado 
FROM TabelaClientes
WHERE datanascimento < '1990-01-01' OR estado = 'SP';

-- Empréstimos concedidos entre 01/01/2023 e 31/03/2023.
SELECT id_emprestimo, datainicio, tipo, valor
FROM TabelaEmprestimo
WHERE datainicio BETWEEN'2023-01-01' AND '2023-03-31';

-- Clientes que possuem 18 anos ou mais.
SELECT Nome, DataNascimento, CPF
FROM TabelaClientes
WHERE NOT (YEAR(CURDATE()) - YEAR(DataNascimento) < 18);

-- Empréstimos que pertencem às categorias "Pessoal" ou "Imobiliário".
SELECT id_emprestimo, valor, tipo
FROM TabelaEmprestimo
WHERE tipo IN ('Pessoal', 'Imobiliário');

-- Empréstimos que possuem valores entre R$ 10.000 e R$ 50.000 
-- e pertencem às categorias "Consignado" ou "Automóvel".
SELECT id_emprestimo, valor, tipo
FROM TabelaEmprestimo
WHERE Valor BETWEEN 10000 and 50000
and tipo in ('Consignado', 'Automóvel');

-- Estados distintos onde os clientes residem.
SELECT DISTINCT estado 
FROM TabelaClientes;

-- Clientes que moram no Rio de Janeiro ou Salvador e cujo CPF inicie com "6".
SELECT nome, cpf, cidade, estado
FROM TabelaClientes
WHERE cidade = 'Rio de Janeiro' OR 'Salvador'
AND cpf like '6%';

-- Pagamentos realizados no ano de 2023 com valores entre R$ 500 e R$ 1.000.
SELECT id_pagamento, valor, datapagamento
FROM TabelaPagamentos
WHERE datapagamento BETWEEN '2023-01-01' AND '2023-12-31'
AND valor BETWEEN 500 AND 1000;

-- Clientes que possuem uma pontuação de crédito menor ou igual a 700.
SELECT id_cliente, pontuacao, fonte
FROM TabelaScoreCredito
WHERE pontuacao <= 700;