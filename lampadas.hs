--PROBLEMA DAS LAMPADAS

--dada uma quantidade x de lampadas,
--retorna o par com a quantidade de lampadas (acesas, apagadas)
lampadas :: Int -> (Int, Int)
lampadas x = (acesas, x - acesas)
    where acesas = contaAcesas (apaga [1..x] listaTrue)
          listaTrue = replicate x True 

--para testar se a lampada n fica acesa ou apagada depois de passar n pessoas
teste :: Int -> Bool
teste n = head (drop (n-1 ) (apaga [1..n] listaTrue))
    where listaTrue = replicate n True 


--retorna uma lista com as lampadas ate n dizendo se estao acesas ou apagadas
lista_lampadas :: Int -> [(Int, Bool)]
lista_lampadas n = numera_lista [1..n] (apaga [1..n] listaTrue)
    where listaTrue = replicate n True 

--numera a lista de booleanos para facilitar a leitura
numera_lista :: [Int] -> [Bool] -> [(Int, Bool)]
numera_lista [] [] = []
numera_lista (x:xs) (b:bs) = [(x,b)] ++ numera_lista xs bs


apaga :: [Int] -> [Bool] -> [Bool] 
apaga [] [] = []
apaga [1] _ = [True]   
apaga [x] [b] = [not b] 
apaga (x:xs) (b:bs)
    | x == 1    = [b] ++ apaga xs bs
    | otherwise = [head invertidas] ++ apaga xs (tail invertidas)
    where invertidas = inverteM x (x:xs) (b:bs)
--x: iteraçao
--b: booleans


contaAcesas :: [Bool] -> Int
contaAcesas [x]
    | x == True = 1
    | otherwise = 0
contaAcesas (x:xs)
    | x == True = 1 + contaAcesas xs
    | otherwise = contaAcesas xs


--inverte os multiplos de m na lista
inverteM :: Int -> [Int] -> [Bool] -> [Bool]
inverteM m [] [] = [] 
inverteM m (i:is) (b:bs)
    | i `ehMultiplo` m = [not b] ++ inverteM m is bs
    | otherwise = [b] ++ inverteM m is bs 


--verifica se x eh multiplo de y
ehMultiplo :: Int -> Int -> Bool
ehMultiplo x y  = elem x [y,2*y..x]


