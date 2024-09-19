program percorrer_milhoes
    implicit none
    INTEGER :: i
    REAL :: start_time, end_time

    ! Captura o tempo inicial
    CALL cpu_time(start_time)

    ! Loop de 1 até 1000 milhões
    DO i = 1, 1000000000
        ! Verifica se o valor de i é múltiplo de 1 milhão
        IF (MOD(i, 1000000) == 0) THEN
            PRINT *, 'Valor: ', i
        END IF
    END DO

    ! Captura o tempo final
    CALL cpu_time(end_time)

    ! Imprime o tempo total gasto
    PRINT *, 'Tempo total gasto (em segundos): ', end_time - start_time

end program percorrer_milhoes
