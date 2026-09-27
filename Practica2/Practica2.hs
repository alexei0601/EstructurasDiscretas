-- Santillan Rodriguez Fernando Alexei
-- Practica 2: Thinking in Haskell (Introducción) - Estructuras Discretas

{- Funcion: reconversion

Descripcion: recibe un parametro numerico y realiza una reconversion
eliminando 3 ceros al valor introducido.

Uso: reconversion 1000 -> 1.0
-}

reconversion :: Double -> Double
reconversion x = (/) x 1000
