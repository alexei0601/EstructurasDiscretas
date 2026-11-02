module Auxiliar where

data Nat = Cero | S Nat deriving (Eq, Show)
data Ent = Zero | Succ Ent | Neg Ent deriving ( Eq, Show)

{- Función: suma_nat

Descripción: Calcula la suma de dos naturales

Uso:
suma_nat Cero (Suc Cero) = Suc Cero
suma_nat (Suc(Suc(Suc(Cero)))) (Suc(Suc(Suc(Suc(Cero))))) -> Suc (Suc (Suc (Suc (Suc (Suc (Suc Cero))))))
-}

suma_nat :: Nat -> Nat -> Nat
suma_nat Cero n = n
suma_nat (S m) n = suma_nat m (S n)

{- Función: multiplica_nat

Descripción: Calcula el producto de dos naturales

Uso:
multiplica_nat (Suc(Suc(Suc(Cero)))) (Suc(Suc(Suc(Suc(Cero))))) -> Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc Cero)))))))))))
-}

multiplica_nat :: Nat -> Nat -> Nat
multiplica_nat Cero n = Cero
multiplica_nat (S m) n =suma_nat n (multiplica_nat n m)
