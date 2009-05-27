factorial :: (Integral a) => a -> a
factorial n = foldl1 (*) [2..n]

combination :: (Integral a) => a -> a -> a
combination n m = (factorial n) `div` ((factorial m) * (factorial (n-m)))

main = print $ combination 40 20

