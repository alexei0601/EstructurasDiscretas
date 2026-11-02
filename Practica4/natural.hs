-- Práctica 04: Números Naturales y recursión
-- Fernando Alexei Santillan Rodriguez
import Auxiliar

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

{- (3) Funcion: potenciaNat

Descripcion: recibe 2 Nat, eleva el primero a la potencia del segundo.

Uso:
potenciaNat ( S ( S ( S Cero ) ) ) ( S ( S Cero ) ) -> S ( S ( S ( S ( S ( S ( S ( S ( S Cero ) ) ) ) ) ) ) )
-}

potenciaNat :: Nat -> Nat -> Nat
potenciaNat m Cero = S Cero
potenciaNat Cero n = Cero
potenciaNat m (S n) = multiplica_nat m (potenciaNat m n)
