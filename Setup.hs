module Main where

import Distribution.Simple

import qualified Acme.Missiles as Missiles

main = do
  Missiles.launchMissiles
  defaultMain
