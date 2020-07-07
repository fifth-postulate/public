init : () -> ( Model, Cmd Message )
init _ =
    let
        decoder =
            Decode.field "subject" <| Decode.list Decode.string

        fetchCandidates =
            Http.get
                { url = "subjects.json"
                , expect = Http.expectJson CandidatesUpdated decoder
                }
    in
    ( fromSubject "World", fetchCandidates )

