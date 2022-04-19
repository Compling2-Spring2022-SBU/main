> {-|
> Program:   sp2 (Strictly 2-Piecewise)
> Copyright: (c) 2022 Jeffrey Heinz
> License:   MIT
>
> -}

> import System.Environment (getArgs)
> import Data.List (nub, sort)

> usage = "usage: sp2 wordfile"

> main :: IO ()
> main = putStrLn =<< f =<< getArgs
>     where f (file:[]) = main' <$> lines <$> readFile file
>           f _ = return usage

> main' :: [String] -> String
> main' = unlines . forbidden2subseqs

`subseq w` returns all subsequences of length 2 in list w.

> subseq :: [a] -> [[a]]
> subseq [] = []
> subseq (x:xs) = map (\y -> [x,y] ) xs ++ subseq xs

`forbidden2subseqs ws` finds the missing subsequences of length 2 in a
list of words ws.

> forbidden2subseqs :: (Ord a, Eq a) => [[a]] -> [[a]]
> forbidden2subseqs ws = filter f allpossible
>   where f x = not (elem x permissible)
>         permissible = nub $ concat $ map subseq ws
>         allpossible = [ [x,y] | x <- symlist, y <- symlist ]
>         symlist = sort $ nub $ concat ws
