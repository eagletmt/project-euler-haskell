primes :: (Integral a) => [a]
primes = 2 : [n | n <- [3,5..], all (\i -> n `mod` i /= 0) $ takeWhile (\p -> p*p <= n) primes]

main = print $ sum $ takeWhile (< 2000000) primes

