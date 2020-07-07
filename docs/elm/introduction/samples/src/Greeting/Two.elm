module Greeting.Two exposing (..)

import Browser
import Html


main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }


init : String
init =
    "World"


view : String -> Html.Html msg
view model =
    Html.text ("Hello, " ++ model ++ "!")


update : msg -> String -> String
update _ model =
    model
