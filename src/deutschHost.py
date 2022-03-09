import qsharp
from deutsch import testeFuncaoConstante
from deutsch import testeFuncaoBalanceada
print()


print('[*] Executando testes da funcao constante')
for i in range(3):
    testeFuncaoConstante.simulate()

print('\n[*] Executando testes da funcao balanceada')
for i in range(3):
    testeFuncaoBalanceada.simulate()

print()