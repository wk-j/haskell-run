module Main where

import System.Environment (getArgs)
import System.Process (callCommand)
import Data.List
import Text.Printf

getFileContent :: FilePath -> IO ([String])
getFileContent file = do
  contents <- readFile file
  return $ lines contents

main :: IO ()
main = do
  filePath <- getArgs
  case filePath of 
    [name] -> do
        contents <- getFileContent name
        let first = head contents
        if isInfixOf "-- (script)" first then
            callCommand $ printf "runhaskell %s" name
        else
          putStrLn "Please add '-- (script)' into file header"
    _ ->
        print "Invalid arguments"
