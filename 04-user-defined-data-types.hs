data Suit = Spades | Clubs | Diamonds | Hearts
    deriving (Show, Eq, Ord, Enum, Bounded)
data Value = Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace
    deriving (Show, Eq, Ord, Enum, Bounded)
data Card = Card Value Suit
    deriving (Show, Eq, Ord)

isBlack (Card _ Spades) = True
isBlack (Card _ Clubs) = True
isBlack _ = False

isPicture (Card value _) = value >= Jack

nextSuit suit
    | suit == maxBound = minBound
    | otherwise = succ suit

fullPack :: [Card]
fullPack = [Card value suit | -- list comprehension 
                suit <- [minBound .. maxBound],
                value <- [minBound .. maxBound]]