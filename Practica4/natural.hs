-- Práctica 04: Números Naturales y recursión
-- Fernando Alexei Santillan Rodriguez

data Nat = Cero | S Nat deriving (Eq, Show)

{- (1) Funcion: a_natural

Descripcion: recibe un numero entero (0,1,2,..) y devuelve su equivalente en la estructura de dato
Nat

Uso:
a_natural 0 -> Cero
a_natural 2 -> S ( S  Cero  )
-}

a_natural :: Int -> Nat
a_natural 0 = Cero
a_natural n = S (a_natural (n - 1))
