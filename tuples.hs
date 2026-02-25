-- Tuples em Haskell
primeiroElemento :: (Int, Int) -> Int -- Recebe 2 números inteiros e retorna o primeiro elemento da tupla
primeiroElemento (x, y) = x 

segundoElemento :: (Int, Int) -> Int -- Recebe 2 números inteiros e retorna o segundo elemento da tupla
segundoElemento (x, y) = y


timeDecomposition :: Int -> (Int, Int, Int) -- Função que recebe um número inteiro representando segundos e retorna uma tupla com horas, minutos e segundos
timeDecomposition seconds = (h, m, s)
  where
    h = div seconds 3600 -- Calcula o número de horas dividindo os segundos por 3600 (número de segundos em uma hora)
    m = div (mod seconds 3600) 60 -- Calcula o número de minutos pegando o resto da divisão dos segundos por 3600 e dividindo por 60 (número de segundos em um minuto)
    s = mod seconds 60 -- Calcula o número de segundos pegando o resto da divisão dos segundos por 60 (número de segundos em um minuto)


fst :: (a, b) -> a -- Função que recebe uma tupla com dois elementos e retorna o primeiro elemento)
fst (a, b) = a

snd :: (a, b) -> b -- Função que recebe uma tupla com dois elementos e retorna o segundo elemento
snd (a, b) = b 



-- Criando funções para acessar elementos de tuplas com mais de dois elementos

first :: (c, d, e) -> c -- Função que recebe uma tupla com três elementos e retorna o primeiro elemento
first (c, d, e) = c

second :: (c, d, e) -> d -- Função que recebe uma tupla com três elementos e retorna o segundo elemento
second (c, d, e) = d

third :: (c, d, e) -> e -- Função que recebe uma tupla com três elementos e retorna o terceiro elemento
third (c, d, e) = e


-- Ou outra forma de seleção dos elementos de uma tupla com mais de dois elementos, usando "_" para ignorar os elementos que não queremos acessar

theFirst :: (f, g, h) -> f 
theFirst (f, _, _) = f

theSecond :: (f, g, h) -> g
theSecond (_, g, _) = g

theThird :: (f, g, h) -> h
theThird (_, _, h) = h



distance :: (Float, Float) -> (Float, Float) -> Float -- Função que recebe duas tuplas representando pontos no plano cartesiano e retorna a distância entre eles usando a fórmula da distância euclidiana
distance (x1, y1) (x2, y2) = sqrt ((x1 - x2)^2 + (y1 - y2)^2)


-- Outra forma de calcular a distância entre dois pontos usando uma função auxiliar para calcular o quadrado de um número

anotherDistance :: (Float, Float) -> (Float, Float) -> Float
anotherDistance p1 p2 = sqrt (sqr dx + sqr dy)
  where
    (x1, y1) = p1 -- Definindo variável local para acessar os elementos da tupla p1
    (x2, y2) = p2 -- Definindo outra variável local para acessar os elementos da tupla p2
    dx = x1 - x2 -- Calculando a diferença entre as coordenadas x dos dois pontos
    dy = y1 - y2 -- Calculando a diferença entre as coordenadas y dos dois pontos
    sqr z = z * z -- Função auxiliar para calcular o quadrado de um número, onde "z" é o número que queremos elevar ao quadrado

