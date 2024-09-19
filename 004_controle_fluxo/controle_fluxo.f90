program controle_fluxo
    implicit none
    
    ! =======================
    ! Declaração de variáveis auxiliares
    ! =======================
    INTEGER :: resultado
    REAL :: valor
    LOGICAL :: condicao
    
    ! Atribuindo valores iniciais genéricos
    valor = 42.0
    condicao = .TRUE.

    ! =======================
    ! Operadores Matemáticos
    ! =======================
    ! >   : maior que
    ! <   : menor que
    ! >=  : maior ou igual a
    ! <=  : menor ou igual a
    ! ==  : igual a (comparação exata)
    ! /=  : diferente de
    
    ! Exemplo: verificar se "valor" é maior que 50
    IF (valor > 50.0) THEN
        PRINT *, 'Valor é maior que 50.0'
    END IF

    ! Exemplo: verificar se "valor" é igual a 42
    IF (valor == 42.0) THEN
        PRINT *, 'Valor é exatamente 42.0'
    END IF

    ! Exemplo: verificar se "valor" é diferente de 100
    IF (valor /= 100.0) THEN
        PRINT *, 'Valor é diferente de 100'
    END IF

    ! =======================
    ! Operadores Lógicos
    ! =======================
    ! .AND. : verdadeiro se ambas as condições forem verdadeiras
    ! .OR.  : verdadeiro se pelo menos uma condição for verdadeira
    ! .NOT. : inverte a condição (verdadeiro vira falso e vice-versa)
    ! .EQV. : verdadeiro se as duas condições forem logicamente equivalentes
    ! .NEQV.: verdadeiro se as duas condições forem logicamente diferentes
    
    ! Exemplo de combinação lógica:
    ! Verificar se "valor" é 42.0 E se "condicao" é verdadeira
    IF (valor == 42.0 .AND. condicao) THEN
        PRINT *, 'Valor é 42.0 e a condição é verdadeira'
    END IF

    ! Verificar se "valor" é diferente de 42.0 OU se "condicao" é falsa
    IF (valor /= 42.0 .OR. .NOT. condicao) THEN
        PRINT *, 'Ou valor não é 42.0 ou a condição é falsa'
    END IF

    ! =======================
    ! Estrutura IF / ELSE IF / ELSE
    ! =======================
    ! A estrutura IF permite decisões com base em condições lógicas ou matemáticas.
    ! ELSE IF e ELSE são opcionais, usados quando há mais de um possível caminho.
    ! O formato básico é:
    ! IF (condição) THEN
    !     <ações>
    ! ELSE IF (outra condição) THEN
    !     <outras ações>
    ! ELSE
    !     <ações finais>
    ! END IF

    ! Exemplo genérico de IF/ELSE:
    IF (valor > 50.0) THEN
        PRINT *, 'Valor é maior que 50.0'
    ELSE IF (valor == 42.0) THEN
        PRINT *, 'Valor é exatamente 42.0'
    ELSE
        PRINT *, 'Valor é menor que 50.0 e não é 42.0'
    END IF

    ! =======================
    ! Estrutura SELECT CASE
    ! =======================
    ! O SELECT CASE é usado quando se deseja verificar múltiplos valores de uma variável.
    ! O formato básico é:
    ! SELECT CASE (variável)
    !     CASE (valor1)
    !         <ações>
    !     CASE (valor2)
    !         <ações>
    !     CASE (intervalo)
    !         <ações>
    !     CASE DEFAULT
    !         <ações para outros casos>
    ! END SELECT

    resultado = 2  ! Podemos alterar este valor para testar diferentes casos

    ! Exemplo genérico de SELECT CASE:
    SELECT CASE (resultado)
        CASE (1)
            PRINT *, 'Resultado é 1'
        CASE (2)
            PRINT *, 'Resultado é 2'
        CASE (3:5)  ! Verifica se o valor está entre 3 e 5 (inclusive)
            PRINT *, 'Resultado está entre 3 e 5'
        CASE DEFAULT
            PRINT *, 'Resultado não se encaixa nas opções anteriores'
    END SELECT

end program controle_fluxo
