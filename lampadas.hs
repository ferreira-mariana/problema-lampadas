--PROBLEMA DAS LAMPADAS

--dada uma quantidade x de lampadas,
--retorna o par com a quantidade de lampadas (acesas, apagadas)
lampadas :: Int -> (Int, Int)
lampadas x = (acesas, x - acesas)
    where acesas = contaAcesas (apaga [1..x] listaTrue)
          listaTrue = replicate x True 


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


--inverte todos os valores de uma lista
--[false, true] vira [true, false]
inverte :: [Bool] -> [Bool]
inverte [x] = [not x]
inverte (x:xs) = [not x] ++ inverte xs

