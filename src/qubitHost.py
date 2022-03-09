import qsharp
from qubitBasic import superPosiciona, lendoValorPadrao, lendoValorInvertido
print()

print('[*] Lendo o valor do Qubit padrao 3 vezes!')
for i in range(3):
    print(lendoValorPadrao.simulate())

print('\n[*] Lendo o valor do Qubit invertido (apos a porta NOT) 3 vezes!')
for i in range(3):
    print(lendoValorInvertido.simulate())

print('\n[*] Lendo o valor do Qubit em superposicao 8 vezes!')
for i in range(8):
    print(superPosiciona.simulate())

print()