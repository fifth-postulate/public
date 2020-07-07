subscriptions : Model -> Sub Message
subscriptions _ =
    Time.every 1000 Ticked