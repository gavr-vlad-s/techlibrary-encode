module Main where
import System.Environment
import System.Directory
import System.FilePath
import Encode

main :: IO ()
main = do
  args <- getArgs 
  mapM_ rename args

rename :: String -> IO ()
rename name = renameFile name name'
  where 
    name' = replaceFileName name . encode $ name
