> {-|
> Module:    Sequences
> 
> This snippet of code defines strings
> as a recursive data structure
> and some basic functions over them.
> Cf. Chapter 8 of Hutton
> -}
>


> data Seq a = Empty | Cons a (Seq a) deriving (Eq, Ord, Show, Read)

> isEmpty :: Seq a -> Bool
> isEmpty Empty = True
> isEmpty _ = False

> append :: a -> Seq a -> Seq a
> append x xs = Cons x xs

Here are some example sequences.

> a   = append 'a' Empty
> ba  = append 'b' a
> bba = append 'b' ba

While we explicitly defined a function to build sequences (append)
we could also just use the constructor directly.

> a'   = Cons 'a' Empty
> ba'  = Cons 'b' a'
> bba' = Cons 'b' ba'

We can check for equality in ghci by doing the following
ghci> bba == bba'

Note that we are able to use the (==) function because of the
'deriving' clause above. If we removed that, then haskell would
complain that there is no instance of the Eq class for our Seq data
type.

Now we can define some functions...

> head :: Seq a -> a
> head Empty = error "Seq.head: no head of empty sequence"
> head (Cons x _) = x

> tail :: Seq a -> Seq a
> tail Empty = error "Seq.tail: no tail of empty sequence"
> tail (Cons _ xs) = xs

> size :: Seq a -> Int
> size Empty = 0
> size (Cons x xs) = 1 + size xs

This catenation function follows the one in Hutton.

> catenate :: Seq a -> Seq a -> Seq a
> catenate Empty ys = ys
> catenate (Cons x xs) ys = Cons x (catenate xs ys)



