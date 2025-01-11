data Expr
  = Lit Integer
  | Add Expr Expr
  
eval :: Expr -> Integer
eval (Lit x) = x
eval (Add exprA exprB) =
  eval exprA + eval exprB

printExpr :: Expr -> String
printExpr (Lit x) = show x
printExpr (Add exprA exprB) =
  (printExpr exprA) ++ " + " ++ (printExpr exprB)

-- test driver
main :: IO ()
main =
  let
    a1 = Add (Lit 9001) (Lit 1)
    a2 = Add a1 (Lit 20001)
    a3 = Add (Lit 1) a2
  in
    print $ printExpr a3
