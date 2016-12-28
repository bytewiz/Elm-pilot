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

view model_ =
  div []
      [ h1 [] [ text "Counter"]
      , div [] [ text (toString model_.count) ]
      , button [ onClick Decrement ] [ text "-"]
      , if model_.count > 5 then
          text ""
        else
          button [ onClick Increment ] [ text "+"]
      ]



main =
  beginnerProgram
    { model = model
    , update = update
    , view = view
    }
