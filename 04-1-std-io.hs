hello :: String -> String
hello name = "Hello, " ++ name

main :: IO ()
main = do
    putStrLn "What's your name?"
    putStr "> "
    name <- getLine
    putStrLn (hello name)