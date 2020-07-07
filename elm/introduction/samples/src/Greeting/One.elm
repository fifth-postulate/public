module Greeting.One exposing (..)

import Browser
import Html


main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }


init =
    "World"


view model =
    Html.text ("Hello, " ++ model ++ "!")


update _ model =
    model
