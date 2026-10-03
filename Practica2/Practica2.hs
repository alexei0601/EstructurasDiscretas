-- Santillan Rodriguez Fernando Alexei
-- Practica 2: Thinking in Haskell (Introducción) - Estructuras Discretas

{- Funcion: reconversion

Descripcion: recibe un parametro numerico y realiza una reconversion
eliminando 3 ceros al valor introducido.

Uso: reconversion 1000 -> 1.0

-}

reconversion :: Double -> Double
reconversion x = (/) x 1000

{- Funcion: cashback

Descripcion: recibe una cantidad numerica y regresa los puntos puntos obtenidos de
cashback (10%) de una TDC.

Uso: cashback 2545 -> 264

-}

cashback :: Double -> Double
cashback x = (/) x 10

{- Funcion: cashbackMonto
Descripcion: recibe una cantidad de puntos (cada punto vale $0.1) y devuelve la cantidad
equivalente en dinero del total de puntos.

Uso: cashbackMonto 264 0.10 -> 26.4
-}

cashbackMonto :: Double -> Double -> Double
cashbackMonto x y = (*) x y

{- Funcion: esDescendente
Descripcion: recibe cuatro parametros numericos (x, y, z, w) y devuelve True si los numeros
fueron introducidos en orden descendente y False si no lo fueron.

Uso: esDescendente 10 9 8 7 -> True
-}

esDescendente :: Int -> Int -> Int -> Int -> Bool
esDescendente x y z w = x > y && y > z && z > w
