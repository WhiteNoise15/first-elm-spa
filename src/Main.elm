module Main exposing (..)

import Commands exposing (fetchPlayers)
import Html exposing (program)
import Models exposing (Model, initialModel)
import Msgs exposing (Msg)
import Update exposing (update)
import View exposing (view)


-- MODEL


init : ( Model, Cmd Msg )
init =
    ( initialModel, fetchPlayers )



-- SUBSCRIBTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
