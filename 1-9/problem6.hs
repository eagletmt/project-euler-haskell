{--
 Copyright (c) 2009, eagletmt
 Released under the MIT License <http://opensource.org/licenses/mit-license.php>
--}

main = print $ (sum [1..100])^2 - (sum $ map (^2) [1..100])

