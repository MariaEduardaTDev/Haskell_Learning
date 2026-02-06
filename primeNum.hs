isPrime :: Int -> Bool

-- Um número primo precisa ser maior que 0 e dividivel somente por 1 e ele mesmo
isPrime 0 = False 
isPrime 1 = False

-- Um loop de identificação se número escolhido é divisel pelos números menores que ele mesmo (exceto o 1)
isPrime x = not (hasDivisor (x - 1)) -- a negação do booleano "hasDivisor" indica que se for True, então se torna False para número primo
    where    
        hasDivisor :: Int -> Bool -- Função só existe dentro da função "isPrime", não pode ser chamada por nenhuma outra função
        hasDivisor 1 = False -- Caso base: se chegou em 1, não encontrou nenhum divisor
        hasDivisor n = mod x n == 0  || hasDivisor (n - 1) --mod identifica o reto da divisão, se for 0, então é divisivel e não é um número primo
        -- Ou vai ser divisel, ou vai atualizar o número de identificação do "hasDivsor" para o próximo número menor até chegar no 1

