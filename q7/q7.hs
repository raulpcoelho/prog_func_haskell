mul2 :: [Int] -> [Int] -> [Int]
mul2 [] []         = []
mul2 [] (y:ys)     = 0 : mul2 [] ys
mul2 (x:xs) []     = 0 : mul2 xs []
mul2 (x:xs) (y:ys) = x*y : mul2 xs ys

main :: IO ()
main = do
    sa <- getLine
    let a = read sa :: [Int]
    sb <- getLine
    let b = read sb :: [Int]
    let result = mul2 a b
    print result