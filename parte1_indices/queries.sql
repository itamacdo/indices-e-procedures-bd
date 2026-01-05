USE company;

-- Qual o departamento com maior número de pessoas
SELECT d.nome, COUNT(e.id_empregado) AS total_empregados
FROM departamento d
JOIN empregado e ON d.id_departamento = e.id_departamento
GROUP BY d.nome
ORDER BY total_empregados DESC
LIMIT 1;

-- Quais são os departamentos por cidade
SELECT d.nome, d.cidade
FROM departamento d
ORDER BY d.cidade;

-- Relação de empregados por departamento
SELECT d.nome AS departamento, e.nome AS empregado
FROM departamento d
JOIN empregado e ON d.id_departamento = e.id_departamento
ORDER BY d.nome;
