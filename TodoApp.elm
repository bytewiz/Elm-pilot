module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

-- state of app
model =
  {toggle = False}

type alias Item =
  { title : String
  , completed : Bool
  }
items =
  [ { title = "title 1", completed = False}
  , { title = "title 2", completed = True}
  ]

toggleItem =
  

renderList item =
  li []
      [ input
          [ type_ "checkbox"
          , checked item.completed
          , onClick toggleItem
          ]
          []
      , text item.title
      ]

main =
  div []
      [ h1 [] [ text "Todo list"]
      , ul [] (List.map renderList items)
      ]
