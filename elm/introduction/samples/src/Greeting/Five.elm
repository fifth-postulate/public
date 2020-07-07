module Greeting.Five exposing (..)

import Browser
import Html
import Html.Attributes as Attribute
import Html.Events as Event


main =
    Browser.element
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }


type alias Model =
    { currentSubject : String
    , currentCandidate : String
    }


init : () -> ( Model, Cmd Message )
init _ =
    ( fromSubject "World", Cmd.none )


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


update : Message -> Model -> ( Model, Cmd Message )
update message model =
    let
        nextModel =
            case message of
                ChangedSubject aCandidate ->
                    model
                        |> withCandidate aCandidate

                Applied ->
                    fromSubject <| candidate model

                Resetted ->
                    fromSubject "World"
    in
    ( nextModel, Cmd.none )


subscriptions : Model -> Sub Message
subscriptions _ =
    Sub.none
