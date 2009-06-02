{--
 Copyright (c) 2009, eagletmt
 Released under the MIT License <http://opensource.org/licenses/mit-license.php>
--}

primes :: (Integral a) => [a]
primes = 2 : [n | n <- [3,5..], all (\i -> n `mod` i /= 0) $ takeWhile (\p -> p*p <= n) primes]

main = print $ primes !! 10000

