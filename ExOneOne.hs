ExOneOne.hs

{- 1. Give another possible calculation for the result of double (double 2). -}

double 2 = 2 + 2

double' 2 = double (double 2)

{- 2. Show that sum [x] = x for any number x  -}

sum [x] = sum [x] + 0 = x + 0 = x

{-3.Define a function product that produces the product of a list of numbers, and show using your
definition that product [2,3,4] = 24.  -}

product [] = 1

product [2,3,4]
2 * (product [3,4])
2 * (3 * (4 * product []))

{-4.How should the definition of the function qsort be modified so that it produces a reverse sorted
version of a list? -}

qsortR :: Ord(a) => [a] -> [a]
qsortR [] = []           --Definimos el elemento nulo
qsortR (x:xs) = 
    (qsortR [b | b <- xs, b > x])     --damos los intervalos
 ++ [x]
 ++ (qsortR [a | a <- xs, a <= x])

 {-What would be the effect of replacing <= by < in the original definition of qsort? Hint: consider
the example qsort [2,2,3,1,1]. -}

--Los elementos repetidos se quitan de la lista final

qsort2 :: Ord(a) => [a] -> [a]
qsort2 [] = []
qsort2 (x:xs) = 
     (qsort [a | a <- xs, a < x]) 
  ++ [x] 
  ++ (qsort [b | b <- xs, b > x])