PROCEDURE AJUSTA_RESERVA_MANUAL (
  In_Ordem	IN	NUMBER,
  In_Chave_Item	IN	NUMBER,
  In_Commit	IN	VARCHAR2
)
AS
  vChave_Reserva	NUMBER;
  vChave_Reserva_Orig 	NUMBER;
  vQtde			NUMBER;
  vExiste		NUMBER;
  vApelido		EMPRESA.APELIDO%TYPE;
BEGIN

  SELECT APELIDO
    INTO vApelido
    FROM EMPRESA;

  IF (vApelido <> 'CRAMER') THEN

    BEGIN
      SELECT CHAVE, QTDE
        INTO vChave_Reserva, vQtde
        FROM RESERVA_MATERIAIS
       WHERE CHAVE_ORD_PROD = In_Ordem
         AND CHAVE_ITEM = In_Chave_Item
         AND NIVEL IS NULL;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN vChave_Reserva := 0; vQtde := 0;
      WHEN TOO_MANY_ROWS THEN vChave_Reserva := 0; vQtde := 0;
      WHEN OTHERS THEN RAISE;
    END;

  ELSE
    vChave_Reserva := 0;
    vQtde := 0;
  END IF;

  SELECT COUNT(*)
    INTO vExiste
    FROM RESERVA_MATERIAIS
   WHERE CHAVE_ORD_PROD = In_Ordem
     AND CHAVE_ITEM = In_Chave_Item
     AND NIVEL IS NOT NULL;

  IF (vExiste = 1) AND (vChave_Reserva <> 0) THEN

    SELECT CHAVE
      INTO vChave_Reserva_Orig
      FROM RESERVA_MATERIAIS
     WHERE CHAVE_ORD_PROD = In_Ordem
       AND CHAVE_ITEM = In_Chave_Item
       AND NIVEL IS NOT NULL;

    UPDATE RESERVA_MATERIAIS
       SET QTDE = QTDE + vQtde,
           SALDO = SALDO + vQtde,
           QTDE_RESERVADA = QTDE_RESERVADA + vQtde
     WHERE CHAVE = vChave_Reserva_Orig;

    UPDATE RESERVA_MATERIAIS_ITENS
       SET CHAVE_RESERV_MAT = vChave_Reserva_Orig
     WHERE CHAVE_RESERV_MAT = vChave_Reserva;

    DELETE FROM RESERVA_MATERIAIS
     WHERE CHAVE = vChave_Reserva;

  ELSIF (vExiste > 1) AND (vChave_Reserva <> 0) THEN

    RAISE_APPLICATION_ERROR(-20110, 'MAIS DE UMA RESERVA ENCONTRADA.');

  END IF;

  IF (In_Commit = 'SIM') THEN
    COMMIT;
  END IF;

END;
