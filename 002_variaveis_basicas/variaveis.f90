program variaveis
    implicit none

    ! =======================
    ! Declaração de variáveis
    ! =======================
    
    ! Inteiros:
    ! Declara uma variável inteira (INTEGER) para armazenar números inteiros.
    ! Formato: INTEGER [::] variavel [= valor_inicial]  (valor_inicial é opcional)
    INTEGER :: a, b
    
    ! Reais:
    ! Declara uma variável de ponto flutuante (REAL) para armazenar números com casas decimais.
    ! Formato: REAL [::] variavel [= valor_inicial]  (valor_inicial é opcional)
    REAL :: x
    
    ! Reais de precisão dupla:
    ! Declara uma variável de precisão dupla (DOUBLE PRECISION), usada para cálculos mais precisos.
    ! Formato: DOUBLE PRECISION [::] variavel [= valor_inicial]  (valor_inicial é opcional)
    DOUBLE PRECISION :: y
    
    ! Strings:
    ! Declara uma variável de caracteres (STRING), que pode armazenar texto.
    ! Formato: CHARACTER(LEN=n) [::] variavel [= valor_inicial]  (LEN=n é obrigatório, valor_inicial é opcional)
    CHARACTER(LEN=20) :: nome
    
    ! Valores booleanos:
    ! Declara uma variável booleana (LOGICAL), que pode armazenar .TRUE. ou .FALSE.
    ! Formato: LOGICAL [::] variavel [= valor_inicial]  (valor_inicial é opcional)
    LOGICAL :: flag

    ! Números complexos:
    ! Declara uma variável complexa (COMPLEX), que armazena uma parte real e uma imaginária.
    ! Formato: COMPLEX [::] variavel [= valor_inicial]  (valor_inicial é opcional)
    COMPLEX :: z
    z = (1.0, 2.0)  ! Inicializando com parte real = 1.0 e parte imaginária = 2.0

    ! ============================
    ! Atribuição de valores
    ! ============================

    ! Atribuição de valores a inteiros
    a = 10
    b = 20

    ! Atribuição de valores a variáveis reais
    x = 3.0  ! Inicializando a variável real

    ! Atribuição de valores a precisão dupla
    y = 5.123456789012345D0  ! Inicializando a variável de precisão dupla (D0 denota precisão dupla)

    ! Atribuição de valores a strings
    nome = 'Felipe'  ! Inicializando a string com até 20 caracteres

    ! Atribuição de valores booleanos
    flag = .FALSE.  ! Inicializando com valor booleano .FALSE.

    ! Impressão dos valores
    PRINT *, 'Nome: ', nome
    PRINT *, 'Número complexo z: ', z

end program variaveis
