import Data.List (permutations)

topswops :: Int -> Int
topswops n = maximum $ map tops $ permutations [1 .. n]
    where
        tops    (1 : _) = 0
        tops xa@(x : _) = 1 + tops reordered
            where
                reordered = reverse (take x xa) ++ drop x xa

main = mapM_
        (\x -> putStrLn $ show x ++ ":\t" ++ show (topswops x))
        [1 .. 10]
