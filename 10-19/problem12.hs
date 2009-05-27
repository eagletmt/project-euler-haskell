import Data.List (find, mapAccumL)
import Data.Maybe (fromJust)

divisors :: (Integral a) => a -> [a]
divisors n = concat [x | i <- [1..floor (sqrt (fromIntegral n))], let (q,r) = n `divMod` i, r == 0, let x = if i == q then [i] else [i,q]]

triangles :: (Integral a) => [a]
triangles = snd $ mapAccumL (\a x -> (a+x, a)) 1 [2..]

main = print $ fromJust $ find (\i -> length (divisors i) > 500) $ triangles

