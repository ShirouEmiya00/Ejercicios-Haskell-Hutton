ExThree.hs

{-1. What are the types of the following values?

                       type 
[’a’,’b’,’c’]   --> [char]
(’a’,’b’,’c’)   --> (char, char, char)
[(False,’O’),(True,’1’)] --> [(Bool, char)]
([False,True],[’0’,’1’]) --> ([Bool], [char])
[tail, init, reverse]  --> [[a] -> [a]]

-}

{-2. Write down definitions that have the following types; it does not matter what the definitions
actually do as long as they are type correct.

bools :: [Bool] --> bools = [True, False]

nums :: [[Int]] --> nums = [1,2,3,4]

add :: Int -> Int -> Int -> Int  --> add a b c = a + b + c 

copy :: a -> (a,a)   -->  a = (a,a)

apply :: (a -> b) -> a -> b  --> aply f a = a f
-}

{- 3.What are the types of the following functions?

second xs = head (tail xs)
second xs :: [a] -> 1

swap (x,y) = (y,x)
swap :: (a,b) -> (b,a)

pair x y = (x,y)
pair :: a -> b -> (a,b)

double x = x*2
double :: Num a => a -> a

palindrome xs = reverse xs == xs
palindrome :: String -> Bool

twice f x = f (f x)
twice :: (a -> a) -> a -> a

Hint: take care to include the necessary class constraints in the types if the functions are defined
using overloaded operators.
-}

{-5. Why is it not feasible in general for function types to be instances of the Eq class? When is it
feasible? Hint: two functions of the same type are equal if they always return equal results for
equal arguments.

--> Como se menciona en el capítulo dos funciones son iguales cuando dan los mismos
valores a las mismas entradas, pero como tenemos muchos tipos diferentes de entradas
no podemos comprobar todos los casos, solo podemos verificarlos para casos específicos
-}
