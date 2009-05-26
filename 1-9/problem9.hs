main = print $ uncurry3 (*) $ head [(a,b,1000-a-b) | a <- [1..333], b <- [a..666], let c = 1000-a-b in a*a + b*b == c*c]
  where
    uncurry3 :: (a -> a -> a) -> (a,a,a) -> a
    uncurry3 f (a,b,c) = f a $ f b c
