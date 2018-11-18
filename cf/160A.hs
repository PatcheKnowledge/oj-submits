import Control.Monad
import Control.Applicative
import Data.List

main :: IO ()
main = sortBy (flip compare) . map read . words . (!!1) <$> replicateM 2 getLine >>= print . (\ns -> solve (sum ns `div` 2) ns)
  where solve _ [] = 0
        solve n (x:xs) | n < x     = 1
                       | otherwise = 1 + solve (n-x) xs
