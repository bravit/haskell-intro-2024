import Data.Char (isSpace)
import Text.Read (readMaybe)

-- Define a function that attempts to parse a string
-- into an integer with detailed error handling
--
-- data Either a b = Left a | Right b
parseStringToIntDetailed :: String -> Either String Int
parseStringToIntDetailed str
    | all isSpace str = Left "The string is empty or contains only whitespace."
    | any (not . isDigitOrMinus) str = Left "The string contains invalid characters."
    | otherwise = case readMaybe str of
        Just num -> Right num
        Nothing -> Left "Could not parse the string into an integer."
    where
      isDigitOrMinus c = c == '-' || c `elem` ['0'..'9']
