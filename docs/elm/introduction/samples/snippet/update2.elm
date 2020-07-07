view : String -> Html.Html Message
view model =
    Html.div []
        [ Html.span [] [ Html.text <| "Hello, " ++ model ]
        , Html.button [ Event.onClick <| ChangedSubject "Sun" ] [ Html.text "Change" ]
        , Html.button [ Event.onClick <| Resetted ] [ Html.text "Reset" ]
        ]