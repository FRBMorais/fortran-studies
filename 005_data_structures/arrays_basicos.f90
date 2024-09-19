program arrays_basicos
    implicit none

    ! =======================
    ! Declaração de arrays
    ! =======================
    
    ! Array unidimensional de inteiros com 5 elementos
    INTEGER, DIMENSION(5) :: vetor

    ! Array multidimensional (matriz 3x3)
    REAL, DIMENSION(3, 3) :: matriz
    REAL, DIMENSION(2, 5) :: nova_matriz
    ! Arrays com tamanho dinamico (alocacao dinamica)
    REAL, ALLOCATABLE, DIMENSION(:) :: vetor_dinamico
    
    ! =======================
    ! Inicialização e atribuição de valores
    ! =======================

    ! inicializacao de valores no array unidimensional
    vetor = (/ 1, 2, 3, 4, 5/)

    ! inicializando valores na matriz 3x3
    matriz = RESHAPE((/ 1.0, 2.0, 3.0, &
                        4.0, 5.0, 6.0, &
                        7.0, 8.0, 9.0 /), SHAPE(matriz))

    ! inicializando arrays alocaveis dinamicamente
    ALLOCATE(vetor_dinamico(10))
    vetor_dinamico = 1.0  ! Atribuindo valor inicial a todo o array

    ! =======================
    ! Operações com arrays
    ! =======================
    
    ! Soma vetorizada entre dois arrays (operando em todos os elementos)
    ! Exemplo com vetor_dinamico, somando 5 a cada elemento
    vetor_dinamico = vetor_dinamico + 5.0
    
    ! Multiplicação vetorizada em todos os elementos do vetor
    vetor_dinamico = vetor_dinamico * 2.0

        ! =======================
    ! Acesso a elementos individuais e subarrays
    ! =======================
    
    ! Acessando o segundo elemento do array "vetor"
    PRINT *, 'Segundo elemento do vetor: ', vetor(2)

    ! Acessando o elemento da posição (2,3) na matriz
    PRINT *, 'Elemento (2,3) da matriz: ', matriz(2, 3)

    ! Acessando subarrays (slicing equivalente)
    ! Exemplo: Acessando uma seção (subarray) de "vetor"
    PRINT *, 'Subarray de vetor (elementos 2 a 4): ', vetor(2:4)

    ! =======================
    ! Métodos de manipulação de arrays
    ! =======================

    ! SUM: Soma todos os elementos de um array
    PRINT *, 'Soma de todos os elementos do vetor: ', SUM(vetor)

    ! MAXVAL e MINVAL: Encontrar o maior e o menor valor em um array
    PRINT *, 'Maior valor no vetor: ', MAXVAL(vetor)
    PRINT *, 'Menor valor no vetor: ', MINVAL(vetor)

    ! RESHAPE: Modificar a forma do array
    ! Exemplo de reshape: Convertendo vetor 1D em matriz 2x5
    
    nova_matriz = RESHAPE(vetor_dinamico, SHAPE(nova_matriz))
    PRINT *, 'Matriz 2x5 formada a partir do vetor dinâmico:'
    PRINT *, nova_matriz

    ! =======================
    ! Operações em subarrays
    ! =======================
    
    ! Exemplo: Operações vetorizadas em subarrays
    ! Multiplicando uma seção do array por um valor constante
    vetor(2:4) = vetor(2:4) * 3
    PRINT *, 'Vetor após multiplicação dos elementos 2 a 4 por 3: ', vetor

    ! =======================
    ! Desalocação de arrays dinâmicos
    ! =======================
    
    ! Sempre que usar arrays alocáveis, é importante desalocar a memória
    DEALLOCATE(vetor_dinamico)

end program arrays_basicos