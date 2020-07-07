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