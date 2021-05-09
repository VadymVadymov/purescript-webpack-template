module Main where

import Prelude
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Halogen.Aff (awaitBody, runHalogenAff)
import Halogen.HTML as HH
import Halogen.VDom.Driver (runUI)
import Component.Random as Random

data Action
  = Increment
  | Decrement

main :: Effect Unit
main =
  runHalogenAff do
    body <- awaitBody
    runUI Random.component unit body

maybeElem :: forall w idx a. Maybe a -> (a -> HH.HTML w idx) -> HH.HTML w idx
maybeElem val f = case val of
  Just x -> f x
  Nothing -> HH.text ""

whenElem :: forall w idx. Boolean -> (Unit -> HH.HTML w idx) -> HH.HTML w idx
whenElem cond f = case cond of
  true -> f unit
  false -> HH.text ""
