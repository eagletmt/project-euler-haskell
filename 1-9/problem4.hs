isPalindromic :: (Eq a) => [a] -> Bool
isPalindromic xs = xs == reverse xs

main = print $ maximum $ [x*y | x <- [100..999], y <- [100..999], isPalindromic $ show (x*y)]

