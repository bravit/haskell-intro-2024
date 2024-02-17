hello :: String -> String
hello name = "Hello, " ++ name

main :: IO ()
main = pure "What's your name?\n> " >>= putStr >> getLine >>= (putStrLn . hello)