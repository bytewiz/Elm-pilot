module Main exposing (..)

import Html exposing (..)
import Html exposing (beginnerProgram)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

-- state of app
type alias Model =
  { count : Int }
model: Model
model =
  { count = 0 }

-- define constant to use through out the app
type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model_ =
  case msg of
    Increment ->  {count = model_.count+1}
    Decrement ->  {count = model_.count-1}

-- general btn style
btnStyle =
  style [ ("height", "2em")
        , ("width", "2em")
        , ("outline", "none")
        , ("cursor", "pointer")
        , ("margin", "20px")
        , ("font-size", "20px")
        , ("border", "none")
        , ("border-radius", "50%")
        , ("background-color", "#fff")
        , ("box-shadow", "0 6px 10px 0 rgba(0,0,0,0.14), 0 1px 18px 0 rgba(0,0,0,0.12), 0 3px 5px -1px rgba(0,0,0,0.3)")
        ]

-- general outer div style
generalStyle =
  style [ ("text-align", "center")
        , ("font-family", "lato")
        ]

-- rendering headline of app
renderHeadline =
  h1
    [ style
          [ ("font-family", "Lato")
          , ("font-size", "40px")
          , ("text-align", "center")
          ]
     ]
     [ text "Counter"]

-- rendering '+' and '-' buttons
renderButtonSet model_ =
  div [ style [("padding", "20px")]]
      [ button
          [ btnStyle , onClick Decrement ]
          [ text "-" ]
      , button
          [ btnStyle, onClick Increment ]
          [ text "+"]
      ]

-- rendering model.count number
renderCount model_ =
  div [ style [("font-size", "25px")]]
      [ text (toString model_.count)]

view model_ =
  div []
      [ renderHeadline
      , div [ generalStyle ]
            [ renderCount model_
            , renderButtonSet model_
            ]
      ]



main =
  beginnerProgram
    { model = model
    , update = update
    , view = view
    }
