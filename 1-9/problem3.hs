{--
 Copyright (c) 2009, eagletmt
 Released under the MIT License <http://opensource.org/licenses/mit-license.php>
--}

factorize :: (Integral a) => a -> [a]
factorize n = divs n (2:[3,5..])
  where divs i (x:xs) | i < x*x = [i]
                      | i `mod` x == 0 = x : divs (i `div` x) (x:xs)
                      | otherwise = divs i xs

main = print $ last $ factorize 600851475143

