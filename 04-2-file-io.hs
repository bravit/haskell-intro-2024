import System.IO

countLinesInFile :: FilePath -> IO Int
countLinesInFile filePath = do
    contents <- readFile filePath
    pure $ length (lines contents)

main :: IO ()
main = do
    let filePath = "04-2-file-io.hs"
    lineCount <- countLinesInFile filePath
    putStrLn $ "The file has " ++ show lineCount ++ " lines."
