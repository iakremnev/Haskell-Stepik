module Demo where

import Data.Function

f x = 2 * x + 7
-- \x -> 2 * x + 7 -- лямбда-функция (\ -- лямбда)
f' = \x -> 2 * x + 7

lenVec x y = sqrt $ x^2 + y^2
lenVec' x = \y -> sqrt $ x^2 + y^2
lenVec'' = \x -> \y -> sqrt $ x^2 + y^2
lenVec3 = \x y -> sqrt $ x^2 + y^2  -- синтаксический сахар

-- Сложение первых элементов первых пар двух пар пар
p1 = ((1,2),(3,4))
p2 = ((3,4),(5,6))
sumFstFst = (+) `on` helper
  where helper pp = fst (fst pp)
sumFstFst' = (+) `on` (\pp -> fst $ fst pp)