module Recursion where
-- Вместо циклов рекурсия

factorial n = if n == 0 then 1 else n * factorial (n - 1)

-- Pattern matching
factorial' 0 = 1
factorial' n = if n < 0 then error "arg must be >= 0" else n * factorial' (n - 1)

-- Guards (охранные выражения)
factorial'' 0 = 1
factorial'' n | n < 0 = error "arg must be >= 0"
              | n > 0 = n * factorial'' (n - 1)
-- Если ни одно охранное выражение не True,
-- происходит следующее сопоставление с образцом

factorial''' :: Integer -> Integer
factorial''' n | n == 0 = 1
               | n > 0 = n * factorial''' (n - 1)
               | otherwise = error "arg must be >= 0"

-- Использование аккумулятора (переменной цикла)
factorial4 n | n >= 0 = helper 1 n
             | otherwise = error "arg must be >= 0"

helper acc 0 = acc
helper acc n = helper (acc * n) (n - 1)