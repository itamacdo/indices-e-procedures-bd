# Índices e Procedures em Banco de Dados

## Descrição do Projeto
Projeto prático focado na criação de índices e procedures em banco de dados
relacional, com o objetivo de otimizar consultas e manipular dados de forma controlada.

---

## Parte 1 – Criação de Índices

Os índices foram criados com base nas consultas mais frequentes e relevantes
do cenário de empresa (company).

### Índices Criados
- Índice em empregado(id_departamento): otimiza JOINs e contagem de funcionários
- Índice em departamento(cidade): acelera consultas por localização
- Índice em departamento(nome): melhora agrupamentos e ordenações

Os índices do tipo B-Tree foram escolhidos por serem ideais para buscas,
filtros e relacionamentos.

---

## Parte 2 – Procedures

Foram criadas procedures com estrutura condicional para executar
operações de inserção, atualização, remoção e consulta de dados,
utilizando uma variável de controle para definir a ação executada.
