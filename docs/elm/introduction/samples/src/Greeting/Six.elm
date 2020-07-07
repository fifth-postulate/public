module Greeting.Six exposing (..)

import Browser
import Html
import Html.Attributes as Attribute
import Html.Events as Event
import Task
import Time


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
    , lastUpdatedTime : Maybe Time.Posix
    , currentTime : Time.Posix
    }


init : () -> ( Model, Cmd Message )
init _ =
    ( fromSubject "World", Cmd.none )


subject : Model -> String
subject { currentSubject } =
    currentSubject


withSubject : String -> Model -> Model
withSubject aSubject model =
    { model
        | currentSubject = aSubject
        , lastUpdatedTime = Just model.currentTime
    }


fromSubject : String -> Model
fromSubject aSubject =
    { currentSubject = aSubject
    , currentCandidate = ""
    , lastUpdatedTime = Nothing
    , currentTime = Time.millisToPosix 0
    }


candidate : Model -> String
candidate { currentCandidate } =
    currentCandidate


withCandidate : String -> Model -> Model
withCandidate aCandidate model =
    { model | currentCandidate = aCandidate }


atTime : Time.Posix -> Model -> Model
atTime aTime model =
    { model | currentTime = aTime }


secondsSinceLastUpdate : Model -> Maybe Int
secondsSinceLastUpdate { lastUpdatedTime, currentTime } =
    let
        currentMillis =
            Time.posixToMillis currentTime
    in
    lastUpdatedTime
        |> Maybe.map Time.posixToMillis
        |> Maybe.map (\t -> currentMillis - t)
        |> Maybe.map (\t -> t // 1000)


view : Model -> Html.Html Message
view model =
    let
        greeting =
            "Hello, " ++ subject model ++ "!"

        updatedMessage =
            model
                |> secondsSinceLastUpdate
                |> Maybe.map (\t -> "updated " ++ String.fromInt t ++ "s ago")
                |> Maybe.withDefault ""
    in
    Html.section []
        [ Html.div []
            [ Html.input [ Attribute.placeholder "Change subject", Attribute.value <| candidate model, Event.onInput ChangedSubject ] []
            , Html.button [ Event.onClick <| Applied ] [ Html.text <| "Apply" ]
            , Html.button [ Event.onClick <| Resetted ] [ Html.text <| "Reset" ]
            ]
        , Html.div []
            [ Html.span [] [ Html.text greeting ]
            , Html.span [] [ Html.text updatedMessage ]
            ]
        ]


type Message
    = ChangedSubject String
    | Applied
    | Resetted
    | Ticked Time.Posix


update : Message -> Model -> ( Model, Cmd Message )
update message model =
    let
        nextModel =
            case message of
                ChangedSubject aCandidate ->
                    model
                        |> withCandidate aCandidate

                Applied ->
                    model
                        |> withSubject (candidate model)

                Resetted ->
                    fromSubject "World"

                Ticked aTime ->
                    model
                        |> atTime aTime
    in
    ( nextModel, Cmd.none )


subscriptions : Model -> Sub Message
subscriptions _ =
    Time.every 1000 Ticked
