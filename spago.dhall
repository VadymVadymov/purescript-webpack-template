{ name = "purescript-webpack-template"
, dependencies =
  [ "affjax"
  , "arrays"
  , "codec-argonaut"
  , "console"
  , "effect"
  , "halogen"
  , "maybe"
  , "prelude"
  , "profunctor"
  , "psci-support"
  , "random"
  , "strings"
  , "tuples"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
