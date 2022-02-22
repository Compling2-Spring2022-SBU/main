> {-|
> Module:    Trees
> 
> This snippet of code defines trees
> as a recursive data structure
> and some basic functions over them.
> Cf. Chapter 8 of Hutton
> -}
>


> data Tree a = Node a [Tree a] deriving (Eq, Ord, Show, Read)

> isLeaf :: Tree a -> Bool
> isLeaf (Node _ []) = True
> isLeaf _ = False

Lets build a tree and look at some examples.

> john   = Node "john" []
> mary   = Node "mary" []
> greets = Node "greets" []
> vp     = Node "vp" [greets, john]
> s      = Node "s" [mary, vp]

> root :: Tree a -> a
> root (Node n _) = n

> size :: Tree a -> Int
> size (Node _ []) = 1
> size (Node _ ts) = 1 + sum (mymap size ts)

> mymap :: (a -> b) -> [a] -> [b]
> mymap f xs = [ f x | x <- xs ]






