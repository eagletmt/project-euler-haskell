{--
 Copyright (c) 2009, eagletmt
 Released under the MIT License <http://opensource.org/licenses/mit-license.php>
--}

fibs :: (Integral a) => [a]
fibs = 1:2:zipWith (+) fibs (tail fibs)

main = print $ sum $ filter even $ takeWhile (< 4000000) fibs

