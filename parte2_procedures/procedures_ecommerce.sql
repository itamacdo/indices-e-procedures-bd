USE ecommerce;

DELIMITER $$

CREATE PROCEDURE sp_ecommerce (
    IN opcao INT,
    IN p_nome VARCHAR(100)
)
BEGIN
    CASE opcao
        WHEN 1 THEN
            SELECT * FROM produto;
        WHEN 2 THEN
            INSERT INTO produto (nome) VALUES (p_nome);
        WHEN 3 THEN
            DELETE FROM produto WHERE nome = p_nome;
    END CASE;
END $$

DELIMITER ;

-- Chamadas
CALL sp_ecommerce(1, NULL);
CALL sp_ecommerce(2, 'Notebook');
CALL sp_ecommerce(3, 'Notebook');
