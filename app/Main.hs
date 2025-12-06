module Main (main) where

import DB
import Database.SQLite.Simple

main :: IO ()
main = do
  conn <- open "example.db"
  initDB conn
  addUser conn "Ruzen42"
  addUser conn "Determine"
  users <- getUsers conn
  mapM_ print users
  close conn


