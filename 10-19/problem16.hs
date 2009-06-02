{--
  Copyright (c) 2009, eagletmt
  Released under the MIT License <http://opensource.org/licenses/mit-license.php>
--}

import Data.Char (digitToInt)

main = print $ sum $ map digitToInt $ show $ 2^1000

