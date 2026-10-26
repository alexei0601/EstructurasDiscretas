module EsParBit where
import Data.Bits

esParBit :: Int -> Bool
esParBit num = (num.&.1) == 0
