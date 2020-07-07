module Greeting.Four exposing (..)

import Browser
import Html
import Html.Attributes as Attribute
import Html.Events as Event


main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }


type alias Model =
    { currentSubject : String
    , currentCandidate : String
    }


init : Model
init =
    fromSubject "World"


subject : Model -> String
subject { currentSubject } =
    currentSubject


fromSubject : String -> Model
fromSubject aSubject =
    { currentSubject = aSubject, currentCandidate = "" }


candidate : Model -> String
candidate { currentCandidate } =
    currentCandidate


withCandidate : String -> Model -> Model
withCandidate aCandidate model =
    { model | currentCandidate = aCandidate }


view : Model -> Html.Html Message
view model =
    let
        greeting =
            "Hello, " ++ subject model ++ "!"
    in
    Html.section []
        [ Html.div []
            [ Html.input [ Attribute.placeholder "Change subject", Attribute.value <| candidate model, Event.onInput ChangedSubject ] []
            , Html.button [ Event.onClick <| Applied ] [ Html.text <| "Apply" ]
            , Html.button [ Event.onClick <| Resetted ] [ Html.text <| "Reset" ]
            ]
        , Html.div []
            [ Html.span [] [ Html.text greeting ]
            ]
        ]


type Message
    = ChangedSubject String
    | Applied
    | Resetted


update : Message -> Model -> Model
update message model =
    case message of
        ChangedSubject aCandidate ->
            model
                |> withCandidate aCandidate

        Applied ->
            fromSubject <| candidate model

        Resetted ->
            fromSubject "World"
