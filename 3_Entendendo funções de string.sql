-- Nomes dos clientes no formato padronizado em maiúsculas.
SELECT UPPER (Nome) AS NomesMaiusculo
FROM TabelaClientes;

-- -- Nomes dos clientes no formato padronizado em minusculas.
SELECT LOWER(Nome) AS NomesMinusculo
FROM TabelaClientes;

-- Extrair os três primeiros caracteres do nome e CPF de cada cliente.
SELECT CONCAT(SUBSTRING(Nome, 1,3), SUBSTRING(cpf, 1,3) ) AS Identificador
FROM TabelaClientes;

-- Nomes dos clientes e o número de caracteres de cada um.
SELECT Nome, LENGTH(Nome) AS Contagem
FROM TabelaClientes;

-- Nome completo do colaborador seguido de seu cargo no departamento.
SELECT CONCAT(NomeColaborador, ' - ', Cargo) AS Nome_Completo_Cargo
from TabelaColaboradores;

-- Ajustar os nomes exibidos, substituindo "Recursos Humanos" por "RH"
SELECT REPLACE(NomeDepartamento, 'Recursos Humanos', 'RH') AS Nome_Atualizado
FROM TabelaDepartamento;

-- Combinar informações de tipo, status e valor do empréstimo em uma única string formatada
SELECT CONCAT(TRIM(Tipo), ' - ', Status, ' - $' , Valor) AS Descricao_Emprestimo
FROM TabelaEmprestimo;

-- Identificador único para cada pagamento exibindo o status e o ID do pagamento concatenados
SELECT id_pagamento, 
CONCAT((SUBSTRING(Status, 1,3)), id_pagamento) AS Identificador 
FROM TabelaPagamentos;

-- Abreviações padronizadas das fontes de consulta do score de crédito
SELECT id_score, Fonte, UPPER(SUBSTRING(Fonte, 1,3)) AS Fonte_Abreviada
from TabelaScoreCredito;

--  Removendo os espaços extras nos valores da coluna 'Tipo'.
SELECT id_emprestimo, TRIM(Tipo) AS Tipo
FROM TabelaEmprestimo;