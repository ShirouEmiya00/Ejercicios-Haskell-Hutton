{-2. Parenthesise the following numeric expressions -}

(2 ^ 3) * 4

(2 * 3) + (4 * 5)

2 + (3 * (4 ^5))


{-3. The script below contains three syntactic errors. Correct these errors and then check that your
script works properly using GHCi.-}

N = a 'div' length xs -- Se debería poner n minúscula y las comillas están en la misma dirección
       where
         a = 10
       xs = [1,2,3,4,5]  -- xs no esta identado
       
--corregido

n = a `div` length xs -- Se debería poner n minúscula y las comillas están en la misma dirección
       where
         a = 10
         xs = [1,2,3,4,5]

{-4. The library function last selects the last element of a non-empty list; for example, last
[1,2,3,4,5] = 5. Show how the function last could be defined in terms of the other library
functions introduced in this chapter. Can you think of another possible definition-}

last' xs = head (reverse xs)
last'' xs = head (drop (lenght xs - 1) xs)

-- si tenemos una lista [1,2,3,4] quitaria 4-1, dejando el ultimo elemento

{-5. The library function init removes the last element from a non-empty list; for example, init
[1,2,3,4,5] = [1,2,3,4]. Show how init could similarly be defined in two different ways. -}

nInit1 xs = take (lenght xs -1) xs 
nInit2 xs = reverse (tail (reverse xs))


