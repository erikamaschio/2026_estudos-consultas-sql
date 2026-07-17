-- Total de valores concedidos em empréstimos.
SELECT SUM(Valor) as TotalEmprestimos
FROM TabelaEmprestimo;

-- Média salarial dos colaboradores da empresa.
SELECT AVG(Salario) AS MediaSalarial
FROM TabelaColaboradores;

-- Maior valor de empréstimo concedido pela instituição.
SELECT MAX(Valor) AS MaiorEmprestimo
FROM TabelaEmprestimo;

-- Menor valor de empréstimo já concedido.
SELECT MIN(Valor) AS MenosEmprestimo
FROM TabelaEmprestimo;

-- Colaboradores registrados na empresa.
SELECT COUNT(Id_colaborador) AS TotalColaboradores
FROM TabelaColaboradores;

-- Média dos valores de empréstimos concedidos.
SELECT AVG(Valor) AS MediaEmprestimos
FROM TabelaEmprestimo;

SELECT SUM(Valor) / COUNT(*) AS Media
FROM TabelaEmprestimo;

-- Total de salários pagos por departamento.
SELECT id_departamento, SUM(Salario) AS TotalSalarios
FROM TabelaColaboradores
GROUP BY Id_departamento;

-- Categorias de empréstimos possuem um total concedido superior a R$ 20.000.
SELECT Tipo, SUM(Valor) AS TotalPorTipo 
FROM TabelaEmprestimo
GROUP BY Tipo
HAVING TotalPorTipo > 20000;

-- Total de valores concedidos e a quantidade de empréstimos firmados por tipo de empréstimo.
SELECT Tipo, 
	SUM(Valor) AS TotalValor, 
	COUNT(Id_Emprestimo) AS QtdEmprestimos
FROM TabelaEmprestimo
GROUP BY Tipo;

-- Total, a média, o maior e o menor valor dos empréstimos concedidos.
SELECT 
	SUM(Valor) AS TotalEmprestimos,
	AVG(Valor) AS MediaEmprestimos,
    MAX(Valor) as MaiorEmprestimo,
    MIN(Valor) AS MenorEmprestimo
FROM TabelaEmprestimo;