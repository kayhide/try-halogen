module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Random (RANDOM, random)
import Halogen.Aff as HA
import Halogen.VDom.Driver (runUI)

-- import Component (component)
import RandomButton (component)

main :: Eff (HA.HalogenEffects (random :: RANDOM)) Unit
main = HA.runHalogenAff do
  body <- HA.awaitBody
  runUI component unit body
