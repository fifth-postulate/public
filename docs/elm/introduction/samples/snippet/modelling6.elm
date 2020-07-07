update : Message -> Model -> Model
update message model =
    case message of
        ChangedSubject aCandidate ->
            model
                |> withCandidate aCandidate

        Applied ->
            fromSubject <| candidate model

        Resetted ->
            fromSubject "World