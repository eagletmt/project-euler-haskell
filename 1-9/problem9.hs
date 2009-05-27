main = print $ head [a*b*c | a <- [1..333], b <- [a..666], let c = 1000-a-b, a*a + b*b == c*c]

