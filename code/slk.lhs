> {-|
> Program:   slk (Strictly k-Local)
> Copyright: (c) 2022 Jeffrey Heinz
> License:   MIT
>
> -}

> import System.Environment (getArgs)
> import Data.List (nub, sort)

> usage = "usage: slk n wordfile"

> main :: IO ()
> main = putStrLn =<< f =<< getArgs
>   where f (num:file:[]) =  main' (read num) <$> lines <$> readFile file
>         f _ = return usage

> main' :: Int -> [String] -> String
> main' n ws = unlines $ forbiddenkgrams n ws

> kgrams :: Int -> [a] -> [[a]]
> kgrams k xs | length xs <= k = [xs]
>             | otherwise = take k xs : kgrams k (tail xs)

`forbiddenkgrams k ws` finds the missing substrings of length k in a
list of words ws.

> forbiddenkgrams :: (Ord a, Eq a) => Int -> [[a]] -> [[a]]
> forbiddenkgrams k ws = filter f allpossible
>   where f x = not (elem x permissible)
>         permissible = nub $ concat $ map (kgrams k) ws
>         allpossible = sigmak symlist k
>         symlist = sort $ nub $ concat ws

`sigmak` returns the list Σᵏ given Σ (as a list) and k. For example,
`sigmak "ab" 3 == ["aaa","baa","aba","bba","aab","bab","abb","bbb"]`.

> sigmak :: [a] -> Int -> [[a]]
> sigmak [] _ = []
> sigmak xs k | k < 0     = []
>             | k == 1    = map (:[]) xs
>             | otherwise = concat $ map (\seq -> map (\x -> x:seq) xs) oneless
>   where oneless = sigmak xs (k-1)
