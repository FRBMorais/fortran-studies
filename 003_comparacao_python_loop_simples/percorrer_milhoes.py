import time

# Captura o tempo inicial
start_time = time.time()

# Loop de 1 até 1000 milhões
for i in range(1, 1000000001):
    if i % 1000000 == 0:
        print(f'Valor: {i}')

# Captura o tempo final
end_time = time.time()

# Calcula e imprime o tempo total gasto
print(f'Tempo total gasto (em segundos): {end_time - start_time}')
