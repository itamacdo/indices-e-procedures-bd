USE universidade;

DELIMITER $$

CREATE PROCEDURE sp_universidade (
    IN opcao INT,
    IN p_nome VARCHAR(100)
)
BEGIN
    IF opcao = 1 THEN
        SELECT * FROM aluno;
    ELSEIF opcao = 2 THEN
        INSERT INTO aluno (nome) VALUES (p_nome);
    ELSEIF opcao = 3 THEN
        DELETE FROM aluno WHERE nome = p_nome;
    END IF;
END $$

DELIMITER ;

-- Chamadas
CALL sp_universidade(1, NULL);
CALL sp_universidade(2, 'Maria');
CALL sp_universidade(3, 'Maria');
