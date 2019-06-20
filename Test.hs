module Test where

sayHello = putStrLn "Hello World from module Test!"
rock'n'roll = 42

f x = if x > 0 then 1 else (-1)

-- Частичное применение (прототип удобный для частичного применения)
discount limit proc sum = if sum >= limit then sum * (100 - proc) / 100 else sum
standardDiscount = discount 1000 5

-- Стиль, в котором не указываются формальные параметры функии нзывается *бесточечным*

-- Ещё пример удобного определения
translate languageTo languageFrom text = <...>
translateToRussian = translate russian