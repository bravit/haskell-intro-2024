name :: String
name = "Mary"

justName :: Maybe String
justName = Just "Mary"

someName :: [String]
someName = ["Mary", "Ann", "John"]

getName :: IO String
getName = do
    putStrLn "What's your name?"
    putStr "> "
    getLine

-- next: 30













{- !!!
 * IDEA: value in a context
 * Maybe, [], IO are different contexts
 * Haskell supports working with any context in a uniform way
   thanks to type classes
-}

reAsk :: Functor f => f String -> f String
reAsk name = fmap (++"?") name

-- :info Functor
-- next 50








justSalutation :: Maybe String
justSalutation = Just "Hello"

someSalutation :: [String]
someSalutation = ["Hi", "Hey", "Hello"]

getSalutation :: IO String
getSalutation = do
    putStrLn "Which salutation do you prefer?"
    putStr "> "
    getLine

sayHello :: Applicative f => f String -> f String -> f String
sayHello salutation name = liftA2 (\s1 s2 -> s1 ++ " " ++ s2) salutation name 

-- :info Applicative
-- explore `pure`
-- next 100
































-- :info Monad

justSalutSpecial "Mary" = Just "Hi Mary"
justSalutSpecial _ = Nothing

someSalutSpecial "Mary" = ["Hi Mary"]
someSalutSpecial _ = []

ioSalutSpecial "Mary" = putStrLn "Oh-oh Mary, hi!"
ioSalutSpecial name = do
    let salut = "Hi " ++ name
    putStrLn salut 

sayHelloSpecial :: Monad m => (String -> m b) -> m String -> m b
sayHelloSpecial salutSpecial name = name >>= salutSpecial  

