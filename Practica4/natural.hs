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

{- (2) Funcion: a_entero

Descripcion: recibe un tipo de dato Nat devuelve su equivalente en numero entero.

Uso:
a_entero Cero -> 0
a_entero ( S ( S ( S Cero ) ) ) -> 3
-}

a_entero :: Nat -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n
