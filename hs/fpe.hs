
-- http://stackoverflow.com/q/39360667/1275256
-- https://www.gnu.org/software/libc/manual/html_node/Control-Functions.html
foreign import ccall "feenableexcept" enableFloatException :: Int -> IO Int

allFloatExceptions :: Int
allFloatExceptions = 1 {-INVALID-} + 4 {-DIVBYZERO-} + 8 {-OVERFLOW-} + 16 {-UNDERFLOW-}

main = do
  _ <- enableFloatException allFloatExceptions
  numstr <- getLine
  let num = read numstr :: Double
  denumstr <- getLine
  let denum = read denumstr :: Double
  print $ num / denum
  
