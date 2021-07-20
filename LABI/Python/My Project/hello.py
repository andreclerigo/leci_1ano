import string
import sys


class hello:
    print("Gosto de Labi")
    print("Adoro LABI")
    sys.stdout.write("Gosto de LabI")
    sys.stdout.write("Gosto de LabI\n")
   
'''
    def funcao(a):
        print(a)
        if (a):
            print("Sim")
        return False

    funcao(False)
    print("d")




    x = int(input("Qual o valor de X"))

    if (x%2 == 0):
        print(x)
    else:
        print(-x)

    if(x/2 == 0):
        print(x)
    elif (x//2 == 1):
        print(x)
    else: print("ola")

    a = "Laboratórios"
    b = " de "
    c = "Informática"
    print(len(c))  # qual o resultado?
    print(a + b + c) # concatenação de strings

    l = []
    l.append({'nome': "Catarina", 'mec': 4534})
    l.append({'nome': "Pedro", 'mec': 1234})
    l.append({'nome': "Joana", 'mec': 5354})
    l.append({'nome': "Miguel", 'mec': 6543})
    print(l[0]['nome'])
    print(l)

    #jogo = {'casa': 0, 'fora': 0}
    #print(jogo['casa'])

    for i in l[1:3]:
        print(i['nome'])
    
    
    x = float(input("Qual o primeiro valor   ?"))
    y = float(input("Qual o segundo valor?"))
    print("%f * %f = %f" % (x, y, x * y))
    x = input("Diz la um:")
    print(x)
    

    a = int(input("Qual o ano?"))
    if a % 100 != 0 and a % 4 == 0:
        print("Bissexto")
    else:
        print("Não Bissexto")
    
    str = ""  # Ou outro valor
    if not (str):
        print("Vazia")
    else:
        print("Preenchida")
    a = 3  # Ou outro valor
    if not (a % 2):
        print("Par")
    else:
        print("Impar")
    
    
    
    
    
    i = 0

    for i in range(0, 10, -1):  # [0, 9, step]
        print(i)

    s = "LABI 2019"

    for i in s:
        if i.isdigit():
            print(i)

    x = s.split()
    cont = 0

    for i in x:
        cont += 1
    print("Numero de palavras: %d" % cont)

    n = ""
    for i in s[ : :-1]:
        n = n + i
    print(n)
    

    f = open("/home/andre/Desktop/texto.txt", "r")
    while True:
        linha = f.readline()
        if linha == '':
            break
        print(linha)
    f.close()
'''