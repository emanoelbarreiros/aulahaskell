module ListaTipos where

data Nat2 = Zero2 | Suc2 Nat2 deriving Show

somar :: Nat2 -> Nat2 -> Nat2
somar Zero2 n = n
somar (Suc2 m) n = Suc2 (somar m n)

mult99 :: Nat2 -> Nat2 -> Nat2
mult99 Zero2 n = Zero2
mult99 n Zero2 = Zero2
mult99 m (Suc2 n) = somar m (mult99 m n)

data Arvore2 a = Folha2 a | No2 (Arvore2 a) a (Arvore2 a)

existe :: Ord a => a -> Arvore2 a -> Bool
existe x (Folha2 y) = x == y 
existe x (No2 e v d)
    | compare x v == LT = existe x e 
    | compare x v == GT = existe x d
    | otherwise =   True


data Arvore3 a = Folha3 a | No3 (Arvore3 a) (Arvore3 a)
balanceada3 :: Arvore3 a -> Bool
balanceada3 (Folha3 a) = True
balanceada3 (No3 e d) = (contaFolhas e - contaFolhas d) `elem` [(-1),0,1] && balanceada3 e && balanceada3 d

contaFolhas (Folha3 _) = 1
contaFolhas (No3 e d) = contaFolhas e + contaFolhas d
--(No3 (No3 (No3 (No3 (Folha3 4) (Folha3 2)) (Folha3 12) ) (Folha3 10)) (No3 (Folha3 6) (No3 (Folha3 2) (Folha3 5))))

data Expr = Val Int | Add Expr Expr

folde :: (Int -> a) -> ([a] -> a) -> Expr -> a
folde f g (Val x) = f x
folde f g (Add e1 e2) = g (map (folde f g) [e1,e2])




