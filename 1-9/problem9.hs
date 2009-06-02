{--
 Copyright (c) 2009, eagletmt
 Released under the MIT License <http://opensource.org/licenses/mit-license.php>
--}

main = print $ head [a*b*c | a <- [1..333], b <- [a..666], let c = 1000-a-b, a*a + b*b == c*c]

