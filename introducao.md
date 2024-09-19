
# README: Instalação e uso do Fortran no Ubuntu via WSL

## 1. Requisitos
Para começar a usar Fortran no WSL com Ubuntu, você precisa:

- **WSL (Windows Subsystem for Linux)** instalado.
- **Ubuntu** configurado como a sua distribuição WSL.
- Conexão com a internet para baixar pacotes necessários.

## 2. Instalação do GNU Fortran (gfortran)

No terminal do Ubuntu dentro do WSL, execute os seguintes comandos para instalar o compilador Fortran:

```bash
# Atualize os repositórios de pacotes
sudo apt update

# Instale o compilador GNU Fortran
sudo apt install gfortran
```

Após a instalação, verifique se tudo está funcionando corretamente com:

```bash
gfortran --version
```

Você deverá ver a versão do GNU Fortran instalada.

## 3. Compilação e execução de programas em Fortran

Após instalar o `gfortran`, você pode começar a compilar e executar programas Fortran. Aqui está um exemplo de um programa simples:

### Exemplo de programa em Fortran:
Crie um arquivo chamado `hello.f90` com o seguinte conteúdo:

```fortran
PROGRAM HelloWorld
    PRINT *, 'Hello, world!'
END PROGRAM HelloWorld
```

### Compilar e executar:
Para compilar e rodar o programa, use os comandos:

```bash
# Compilar o código
gfortran hello.f90 -o hello

# Executar o arquivo compilado
./hello
```

O resultado deve ser:
```
Hello, world!
```

## 4. Características Básicas do Fortran

Fortran é uma linguagem com foco em computação numérica e científica. Algumas características essenciais incluem:

- **Foco em eficiência de cálculo**: Fortran foi projetado para operações matemáticas de alto desempenho, sendo uma das linguagens preferidas em computação científica.
- **Portabilidade**: Pode ser executado em diferentes sistemas e arquiteturas.
- **Evolução ao longo do tempo**: Começou com o Fortran 77 e evoluiu até o Fortran 2008 e 2018, incorporando conceitos modernos como programação orientada a objetos e manipulação de arrays.