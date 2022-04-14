> {-|
> Module: Deterministic Finite-state String Acceptors (Dfsa)
> Copyright: (c) 2022 Jeffrey Heinz
> License:   MIT
>
> This snippet of code defines deterministic finite-state string
> acceptors, the recognize function, and a prefix tree acceptor.
> -}

> module Dfsa where

It is generally good practice to import libraries using the qualified
keyword and a short name which we must use to refer to the functions in
those libraries. (https://wiki.haskell.org/Import_modules_properly)

> import qualified Data.List as List
> import qualified Data.Set as Set
> import qualified Data.Map.Strict as Map

https://hackage.haskell.org/package/haskell2010-1.1.2.0/docs/Data-List.html
https://hackage.haskell.org/package/containers-0.6.5.1/docs/Data-Set.html
https://hackage.haskell.org/package/containers-0.6.5.1/docs/Data-Map.html

Instead of having to refer to the data types Set.Set and Map.Map we
use type aliases as shown below.

> type Set = Set.Set
> type Map = Map.Map

Sets and Maps are polymorphic but have some class requirements.

The type `Set a` is a set of elements of type a, and
type a must belong to the Ord class.

The type `Map k v` is a map from keys of type k to values of type v, and
type k must belong to the Ord class.

> data DFSA q b  = DFA { states  :: Set q
>                      , sigma   :: Set b
>                      , initial :: q
>                      , finals  :: Set q
>                      , delta   :: Map (q,b) q
>                      } deriving (Eq, Ord, Show, Read)

Below is the deltastar function.

Note `data Maybe a = Nothing | Just a`
Note also `lookup :: Ord k => k -> Map k a -> Maybe a`

So if you lookup a key in a map and its not there, Nothing is
returned.  Lifting the states from type q to Maybe q is one way to
catch the "error" of trying to follow an undefined transition.
Alternatively, one can think of Nothing as the sink state and every
other state q is Just q.

> dstar :: (Ord q, Ord b)
>       => Map (q,b) q -> Maybe q -> [b] -> Maybe q

> dstar _ Nothing _       = Nothing
> dstar _ (Just q) []     = Just q
> dstar d (Just q) (b:bs) = dstar d q' bs where q' = Map.lookup (q,b) d

Next we define recognize.

> recognize :: (Ord q, Ord b)
>           => DFSA q b -> [b] -> Bool

> recognize dfsa bs = q `Set.member` (Set.map Just fs)
>   where q  = dstar d (Just q0) bs
>         d  = delta dfsa
>         fs = finals dfsa
>         q0 = initial dfsa
>

Next we write a function which takes a list of words and returns a
DFSA which recognizes all and only those words in the list.

I make a type alias Worde (because Word is already used as an unsigned
integral type in the Haskell Prelude).

> type Worde b = [b]

> prefixtree :: Ord b => [Worde b] -> DFSA (Worde b) b

> prefixtree ws = DFA { states  = prefs
>                     , sigma   = syms
>                     , initial = []
>                     , finals  = Set.fromList ws
>                     , delta   = makeMap prefs syms
>                     }
>   where
>     prefs = Set.fromList $ concatMap List.inits ws
>     syms  = Set.fromList $ concat ws

Note that `f (g x) == f $ g x`. Using '$' is a way of 'feeding'
arguments leftward and reduces parenthesis usage. They can be used
repeatedly so `f (g (h x)) == f $ g $ h x`.

> makeMap :: Ord b => Set (Worde b) -> Set b -> Map (Worde b,b) (Worde b)

> makeMap ws syms = Map.filter (`Set.member` ws)
>                   $ Map.fromSet (\(q,a) -> q ++ [a])
>                   $ Set.cartesianProduct ws syms

Note `Map.filter f` only keeps (key,value) pairs where the value
satisfies `f`.

Now we can test.

> vocab = ["gold","go","goal","golf","gate","gab","hi"]

> test = vocab ++ ["glop", "hia", "gol"]

> a = prefixtree vocab

map (recognize a) test == [True,True,True,True,True,True,True,False,False,False]
