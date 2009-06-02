{--
  Copyright (c) 2009, eagletmt
  Released under the MIT License <http://opensource.org/licenses/mit-license.php>
--}

import Data.List (find)
import Data.Maybe (fromJust)

divisors :: (Integral a) => a -> [a]
divisors n = concat [x | i <- [1..floor (sqrt (fromIntegral n))], let (q,r) = n `divMod` i, r == 0, let x = if i == q then [i] else [i,q]]

triangles :: (Integral a) => [a]
triangles = scanl1 (+) [1..]

main = print $ fromJust $ find (\i -> length (divisors i) > 500) $ triangles

