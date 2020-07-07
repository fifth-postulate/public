view : Model -> Html.Html Message
view model =
    let
        greeting =
            "Hello, " ++ subject model
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
