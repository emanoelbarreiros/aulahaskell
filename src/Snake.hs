module Snake where

import Graphics.Gloss

main = display (InWindow "Hello World" (200, 200) (10, 10)) white (Circle 80)