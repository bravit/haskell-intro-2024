hello :: String -> String
hello name = "Hello, " ++ name

main :: IO ()
main = putStr "What's your name?\n> " >> getLine >>= (putStrLn . hello)

-- revisit 04-1