def fibonacci(n):
    res = []
    soma = 0
    if n < 0:
        escrever(res)
        return res
    else:
        res.append(soma)
        if n > 1:
            
            for i in range(2, n +1):
                soma = soma + i-2
                res.append(soma)
        escrever(res)
        return res


def escrever(res):
    for x in res:
        print(x)

fibonacci(5)
