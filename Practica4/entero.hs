-- Práctica 04: Números Naturales y recursión
-- Fernando Alexei Santillan Rodriguez

import Auxiliar

{- (5) Funcion: multiEnt

Descripcion: recibe dos enteros y devuelve el producto de ellos.
Uso:
multiEnt ( Neg ( Succ ( Succ ( Succ ( Succ Zero ) ) ) ) ) ( Succ (Succ Zero ) ) -> Neg ( Succ ( Succ ( Succ ( Succ ( Succ ( Succ ( Succ ( Succ Zero ) )) ) ) ) ) )
-}

multiEnt :: Ent -> Ent -> Ent
multiEnt Zero n = Zero
multiEnt m Zero = Zero
multiEnt (Succ m) n = suma_ent n (multiEnt m n)
multiEnt (Neg m) (Succ n) = Neg (multiEnt m (Succ n))
multiEnt (Succ m) (Neg n) = Neg (multiEnt (Succ m) n)
multiEnt (Neg m) (Neg n) = multiEnt m n
