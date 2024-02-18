import System.IO

countLinesInFile :: FilePath -> IO Int
countLinesInFile filePath = fmap (length . lines) $ readFile filePath

main :: IO ()
main = countLinesInFile filePath >>= putStrLn . message
  where
    filePath = "05-3-file-io.hs"
    message lineCount = "The file has " ++ show lineCount ++ " lines." 