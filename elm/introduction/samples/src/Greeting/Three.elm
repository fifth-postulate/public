module Greeting.Three exposing (..)

import Browser
import Html
import Html.Events as Event


main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }


init : String
init =
    "World"


view : String -> Html.Html Message
view model =
    Html.div []
        [ Html.span [] [ Html.text <| "Hello, " ++ model ++ "!" ]
        , Html.button [ Event.onClick <| ChangedSubject "Sun" ] [ Html.text "Change" ]
        , Html.button [ Event.onClick <| Resetted ] [ Html.text <| "Reset" ]
        ]


type Message
    = ChangedSubject String
    | Resetted


update : Message -> String -> String
update message model =
    case message of
        ChangedSubject subject ->
            subject

        Resetted ->
            "World"
