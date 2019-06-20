module Demo where
-- Увеличение отступа = продолжение текущего объявления
-- Уменьшение отступа

roots :: Double -> Double -> Double -> (Double, Double)

roots a b c =
    (
        (-b - sqrt (b^2 - 4 * a * c)) / (2 * a),
        (-b + sqrt (b^2 - 4 * a * c)) / (2 * a)
    )

-- let in
roots' a b c =
    let d = sqrt (b^2 - 4 * a * c) in
    ((-b - d) / (2 * a), (-b + d) / (2 * a))

-- let x = True in (x, x)

roots'' a b c =
    let {d = sqrt (b^2 - 4 * a * c); den = 2 * a} in
    ((-b-d) / den, (-b + d) / den)

-- локальные связывания должны иметь один и тот же отступ
roots''' a b c = 
    let
        x1 = (-b - d) / aTwice
        x2 = (-b + d) / aTwice
        aTwice = 2 * a
        d = sqrt (b^2 - 4 * a * c)
    in (x1, x2)


factorial5 n | n >= 0 = let
                 helper 0 acc = acc
                 helper n acc = helper (n - 1) (acc * n)
               in helper n 1
             | otherwise = error "arg must be >= 0"

-- Связывание с образцом
rootsDiff a b c = let
    (x1, x2) = roots a b c
    in x1 - x2

--------- Альтернатива: where ------------
roots4 a b c = (x1, x2) where
    x1 = (-b - d) / aTwice
    x2 = (-b + d) / aTwice
    aTwice = a * 2
    d = sqrt (b^2 - 4 * a * c)

-- Замечение: конструкция (let ... in ...) является выражением,
-- (... where ...) НЕ является выражением

-- тут helper можно использовать сразу в нескольких охранных выражениях
factorial6 :: Integer -> Integer
factorial6 n | n >= 0 = helper 1 n
             | otherwise = error
    where
        helper acc 0 = acc
        helper acc n = helper (acc * n) (n - 1)