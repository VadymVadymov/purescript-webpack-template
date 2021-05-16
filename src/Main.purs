module Main where

import Prelude
import Effect (Effect)
import Halogen.Aff (awaitBody, runHalogenAff)
import Halogen.VDom.Driver (runUI)
import Component.Homework as Homework

main :: Effect Unit
main =
  runHalogenAff do
    body <- awaitBody
    runUI Homework.component unit body
