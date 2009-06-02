{--
 Copyright (c) 2009, eagletmt
 Released under the MIT License <http://opensource.org/licenses/mit-license.php>
--}

main = print $ sum $ [i | i <- [1 .. 999], i `mod` 3 == 0 || i `mod` 5 == 0]

