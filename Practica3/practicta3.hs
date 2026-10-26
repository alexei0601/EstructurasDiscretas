-- Práctica 03: Mis tipos de datos y listas por compresión
-- Fernando Alexei Santillan Rodriguez

import EsParBit

-- Crear tipo de dato Plazo

data Plazo = Dias Int | Meses Int deriving (Show, Eq)

{- (1) Funcion: cetes

Descripcion: la funcion recibe un monto inicial, el plazo (en dias o meses)
y devuelve el monto final disponible al concluir el plazo seleccionado.

El valor final o monto futuro se calcula con:

VF = VI × (1 + i × (t/360))

- V F (Valor Final o Monto Futuro):
- V I (Valor Inicial o Capital Invertido)
- i (Tasa de Rendimiento Anual Bruta):
- t (Días Transcurridos)
- 360 (Base Anual Comercial)

Tasas de interés bruto anuales según el plazo:
 1 mes (28 dias): 6.09 % -> 6.09 / 100 -> 0.0609
 6 meses (182 dias): 6.91 % -> 6.91 / 100 -> 0.0691
 12 meses (364 días): 7.44 % -> 7.44 / 100 -> 0.0744

Uso: cetes 100 (Dias 28) -> 100.4

-}

cetes :: Double -> Plazo -> Double

-- Casos para 1 mes/28 dias
cetes monto_i (Meses 1) = monto_i * (1 + 0.0609 * (28 / 360))
cetes monto_i (Dias 28) = monto_i * (1 + 0.0609 * (28 / 360))
-- Casos para 6 meses/182 dias
cetes monto_i (Meses 6) = monto_i * (1 + 0.0691 * (182 / 360))
cetes monto_i (Dias 182) = monto_i * (1 + 0.0691 * (182 / 360))
-- Casos para 12 meses/364 dias
cetes monto_i (Meses 12) = monto_i * (1 + 0.0744 * (364 / 360))
cetes monto_i (Dias 364) = monto_i * (1 + 0.0744 * (364 / 360))

{- (2) Funcion: mensajeCetes

Descripcion: recibe un monto inicial de inversion, un plazo (en dias o meses) y devuelve un mensaje
indicando: El plazo de la inversión, el rendimiento bruto obtenido y el monto acumulado al finalizar el plazo.

Uso: mensajeCetes 100 (Dias 28) -> "Despues de 28 dias, obtuve 0.47 de rendimiento bruto sin ningun
riesgo crediticio. El monto total de mi inversion es 100.47"
-}

mensajeCetes :: Double -> Plazo -> IO()
-- Caso meses
mensajeCetes monto_i (Meses n) =
  putStrLn("Despues de " ++ show(n) ++ " meses, obtuve " ++ show((cetes monto_i (Meses n)) - monto_i)
          ++ " de rendimiento bruto sin ningun riesgo crediticio. El monto total de mi inversion es "
          ++ show(cetes monto_i (Meses n)))
-- Caso dias
mensajeCetes monto_i (Dias n) =
  putStrLn("Despues de " ++ show(n) ++ " dias, obtuve " ++ show((cetes monto_i (Dias n)) - monto_i)
          ++ " de rendimiento bruto sin ningun riesgo crediticio. El monto total de mi inversion es "
          ++ show(cetes monto_i (Dias n)))

{- (3) Funcion: soloPares

Descripcion: recibe una lista de tipo entero y devuelve una lista con solo los numeros pares de
la lista original.

Uso: soloPares [1, 2, 3, 4] -> [2, 4]
-}

soloPares :: [Int] -> [Int]
soloPares xs = [x | x <- xs, esParBit(x)]
