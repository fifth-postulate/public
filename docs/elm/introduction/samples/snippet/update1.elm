update : Message -> String -> String
update message model =
    case message of
        ChangedSubject subject ->
            subject

        Resetted ->
            "World"