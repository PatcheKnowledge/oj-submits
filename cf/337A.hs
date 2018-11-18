import Control.Applicative ((<$>))
import Control.Monad (replicateM)
import Data.List (sort)

main :: IO ()
main = map read . concat . map words <$> replicateM 2 getLine >>= print . solve
    where solve (n : m : ms) = minN n $ sort ms

minN :: Int -> [Int] -> Int
minN n ms = minimum [y - x | (x, y) <- ms `zip` drop (n - 1) ms]
