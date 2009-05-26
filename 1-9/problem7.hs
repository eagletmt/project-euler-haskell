primes :: (Integral a) => [a]
primes = 2 : [n | n <- [3,5..], all (\i -> n `mod` i /= 0) $ takeWhile (\p -> p*p <= n) primes]

main = print $ primes !! 10000

