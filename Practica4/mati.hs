-- Práctica 04: Números Naturales y recursión
-- Fernando Alexei Santillan Rodriguez

data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

{- (6) Funcion: mayorIgual

Descripcion: recibe dos matrioska y compara si la primera es mayor o igual que la segunda.

Uso:
mayorIgual Mati Mati -> True   -- Iguales
mayorIgual ( Cont ( Cont Mati ) ) ( Cont ( Cont ( Cont Mati ) ) ) -> False   -- Menor
-}

mayorIgual :: Matrioska -> Matrioska -> Bool
-- Casos base
mayorIgual Mati Mati = True
mayorIgual (Cont m) Mati = True
mayorIgual Mati (Cont n) = False
-- Caso recursivo
mayorIgual (Cont m) (Cont n) = mayorIgual m n

{- (7) Funcion: aplana

Descripcion: recibe una matrioska anidada y devuelve una lista con todas las matrioscas que la componen.

Uso:
aplana Mati -> [Mati]
aplana ( Cont ( Cont Mati ) ) -> [ Cont ( Cont Mati ) , Cont Mati, Mati ]
-}

aplana :: Matrioska -> [Matrioska]
-- Caso base
aplana Mati = [Mati]
-- Caso recursivo
aplana (Cont m) = (Cont m):aplana(m)
