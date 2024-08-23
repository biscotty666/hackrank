import Data.List
import Data.Maybe

p :: [Int]
p = [5,2,1,3,4]

x :: [Int]
x = [1..5]

getIndices :: [Int] -> [Int] -> [Int]
getIndices [] _ = []
getIndices (ind:inds) p = 1 + (fromJust (findIndex (==ind) p)) : getIndices inds p

permutationEquation :: [Int] -> [Int]
permutationEquation p = getIndices (getIndices [1..(length p)] p) p
