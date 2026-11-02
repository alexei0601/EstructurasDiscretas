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
-- Caso base
suma_nat Cero n = n
-- Caso recursivo
suma_nat (S m) n = suma_nat m (S n)

{- Función: multiplica_nat

Descripción: Calcula el producto de dos naturales

Uso:
multiplica_nat (Suc(Suc(Suc(Cero)))) (Suc(Suc(Suc(Suc(Cero))))) -> Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc (Suc Cero)))))))))))
-}

multiplica_nat :: Nat -> Nat -> Nat
-- Caso base
multiplica_nat Cero n = Cero
-- Casos Recursivos
multiplica_nat (S m) n =suma_nat n (multiplica_nat n m)

{- Función: suma_ent

Descripción: Calcula la suma de dos enteros

Uso:
suma_ent (Succ (Succ ( Succ Zero))) (Neg ( Succ ( Succ Zero))) = Succ Zero
suma_ent (Neg(Succ (Succ ( Succ Zero)))) (Neg ( Succ ( Succ Zero))) = Neg (Succ (Succ (Succ (Succ (Succ Zero)))))
-}
suma_ent :: Ent -> Ent -> Ent
-- Casos Base (Identidad)
suma_ent Zero m = m
suma_ent n Zero = n

-- Casos Recursivos
suma_ent (Succ n) (Succ m) = Succ (suma_ent n (Succ m))
suma_ent (Neg n) (Neg m) = Neg (suma_ent n m)
suma_ent (Succ n) (Neg m) =  resta_ent (Succ n) m
suma_ent (Neg n) (Succ m) = resta_ent (Succ m) n


{- Función: resta_ent

Descripción: Calcula la resta de dos enteros.
-}

resta_ent :: Ent -> Ent -> Ent
-- Casos Base
resta_ent n Zero = n
resta_ent Zero (Succ m) = Neg (Succ m)
resta_ent Zero (Neg m) = Succ m

-- Casos Recursivos
resta_ent (Succ n) (Succ m) = resta_ent n m
resta_ent (Neg n) (Neg m) = resta_ent n m
resta_ent n (Neg m) = suma_ent n (Succ m)
