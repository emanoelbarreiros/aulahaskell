module AulaTipos where

primeiro :: [a] -> a
primeiro (x:xs) = x

type Par a = (a,a)

somar :: Par Int -> Int
somar (a,b) = a + b

concatenar :: Par String -> String
concatenar (a,b) = a ++ b

type Assoc k v = [(k,v)]

buscar :: (Eq a, Eq b) => a -> Assoc a b -> [b]
buscar k xs
    | xs == [] = []
    | k == fst (head xs) = snd (head xs) : buscar k (tail xs)
    | otherwise = buscar k (tail xs)


dividir :: (Eq a, Fractional a) => a -> a -> Maybe a
dividir n d
    | d == 0 = Nothing
    | otherwise = Just (n / d)

somaMaybe :: Num a => Maybe a -> Maybe a -> Maybe a
somaMaybe Nothing _ = Nothing
somaMaybe _ Nothing = Nothing
somaMaybe (Just x) (Just y) = Just (x + y)

--newtype Nat = N Int deriving Show

data Nat = Zero | Suc Nat deriving Show

nat2int :: Nat -> Int
nat2int Zero = 0
nat2int (Suc n) = 1 + nat2int n

int2nat :: Int -> Nat
int2nat 0 = Zero
int2nat n = Suc (int2nat (n-1))

somarN :: Nat -> Nat -> Nat
somarN Zero n = n
somarN (Suc m) n = Suc (somarN m n)


sub :: Nat -> Nat -> Nat
sub a Zero = a
sub Zero a = Zero
sub (Suc a) (Suc b) = sub a b