USE company;

-- Índice criado para acelerar junção entre empregado e departamento
CREATE INDEX idx_empregado_departamento
ON empregado(id_departamento);

-- Índice criado para otimizar consultas por cidade
CREATE INDEX idx_departamento_cidade
ON departamento(cidade);

-- Índice criado para melhorar contagem de empregados por departamento
CREATE INDEX idx_departamento_nome
ON departamento(nome);
