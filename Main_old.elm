module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

-- defining Object of Ship as a type
type alias Ship =
  { name : String
  , model : String
  , cost : Int
  }

-- List of ships (data)
ships =
  [ { name = "Ship one", model = "One", cost = 100}
  , { name = "Ship two", model = "Two", cost = 200}
  , { name = "Ship three", model = "Three", cost = 300}
  ]

-- called by renderShips which map over the list
-- and then render li with some child html
renderShip ship =
  li []
      [ text ship.name
      , text ", "
      , b []
          [ text <| toString ship.cost ]
      ]

-- function takes list of ships as param
-- div (all html) takes to lists [attributes] [children]
renderShips ships =
  div
    [ style
        [ ( "font-family", "Lato")
        , ( "padding", "20px")
        ]
    ]
    [ h1 [] [ text "Ships" ]
    , ul [] (List.map renderShip ships)
    ]

-- Render function
main =
  renderShips ships
