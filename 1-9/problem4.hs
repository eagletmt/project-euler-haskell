{--
 Copyright (c) 2009, eagletmt
 Released under the MIT License <http://opensource.org/licenses/mit-license.php>
--}

isPalindromic :: (Eq a) => [a] -> Bool
isPalindromic xs = xs == reverse xs

main = print $ maximum $ [x*y | x <- [100..999], y <- [100..999], isPalindromic $ show (x*y)]

