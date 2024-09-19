program arrays_funcoes_completo
    implicit none

    ! Declarando arrays
    INTEGER, DIMENSION(10) :: vetor = (/ 1, 3, 5, 7, 9, 2, 4, 6, 8, 10 /)
    REAL, DIMENSION(3, 3) :: matriz
    LOGICAL, DIMENSION(10) :: array_logico = (/ .TRUE., .FALSE., .TRUE., .FALSE., .TRUE., &
                                                .TRUE., .FALSE., .FALSE., .TRUE., .TRUE. /)

    ! Declarando arrays alocáveis para resultados dinâmicos
    INTEGER, ALLOCATABLE, DIMENSION(:) :: filtrado
    REAL, ALLOCATABLE, DIMENSION(:) :: vetor_dinamico

    ! Inicializando a matriz 3x3
    matriz = RESHAPE( (/ 1.0, 2.0, 3.0, &
                        4.0, 5.0, 6.0, &
                        7.0, 8.0, 9.0 /), SHAPE(matriz) )

    ! Alocando vetor dinâmico
    ALLOCATE(vetor_dinamico(10))
    vetor_dinamico = (/ 10.0, 20.0, 30.0, 40.0, 50.0, 60.0, 70.0, 80.0, 90.0, 100.0 /)

    ! =======================
    ! Usando funções intrínsecas
    ! =======================

    ! SUM e PRODUCT: Soma e Produto dos elementos de um vetor
    PRINT *, 'Soma dos elementos do vetor: ', SUM(vetor)
    PRINT *, 'Produto dos elementos do vetor: ', PRODUCT(vetor)

    ! MAXVAL, MINVAL: Encontrando o maior e menor valor no vetor
    PRINT *, 'Maior valor no vetor: ', MAXVAL(vetor)
    PRINT *, 'Menor valor no vetor: ', MINVAL(vetor)

    ! MAXLOC, MINLOC: Encontrando as posições do maior e menor valor
    PRINT *, 'Posição do maior valor no vetor: ', MAXLOC(vetor)
    PRINT *, 'Posição do menor valor no vetor: ', MINLOC(vetor)

    ! ANY e ALL: Operações lógicas em arrays booleanos
    PRINT *, 'Algum valor é verdadeiro? ', ANY(array_logico)
    PRINT *, 'Todos os valores são verdadeiros? ', ALL(array_logico)

    ! COUNT: Contando quantos elementos no vetor são maiores que 5
    PRINT *, 'Quantidade de elementos > 5 no vetor: ', COUNT(vetor > 5)

    ! DOT_PRODUCT: Produto escalar entre dois vetores
    PRINT *, 'Produto escalar entre vetor e ele mesmo: ', DOT_PRODUCT(vetor, vetor)

    ! MATMUL: Multiplicação de matrizes
    PRINT *, 'Multiplicação de matrizes: ', MATMUL(matriz, matriz)

    ! PACK: Filtrando valores do vetor que são maiores que 5
    CALL filtrar_vetor(vetor, filtrado, 5)
    PRINT *, 'Valores filtrados (maiores que 5): ', filtrado

    ! SPREAD: Expandindo um vetor em uma dimensão adicional
    PRINT *, 'Vetor expandido para matriz 2D: ', SPREAD(vetor, DIM=2, NCOPIES=2)

    ! TRANSPOSE: Transpondo uma matriz
    PRINT *, 'Matriz transposta: ', TRANSPOSE(matriz)

    ! DEALLOCATING the dynamic arrays
    DEALLOCATE(filtrado)
    DEALLOCATE(vetor_dinamico)

contains

    ! Função para filtrar valores de um vetor com base em uma condição
    SUBROUTINE filtrar_vetor(vetor_in, vetor_out, valor_limite)
        INTEGER, DIMENSION(:), INTENT(IN) :: vetor_in
        INTEGER, ALLOCATABLE, DIMENSION(:), INTENT(OUT) :: vetor_out
        INTEGER, INTENT(IN) :: valor_limite
        INTEGER :: n_filtrados

        ! Contando quantos elementos atendem à condição
        n_filtrados = COUNT(vetor_in > valor_limite)

        ! Alocando o vetor de saída com o tamanho correto
        ALLOCATE(vetor_out(n_filtrados))

        ! Usando PACK para armazenar os valores filtrados
        vetor_out = PACK(vetor_in, vetor_in > valor_limite)
    END SUBROUTINE filtrar_vetor

end program arrays_funcoes_completo
