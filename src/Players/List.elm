module Players.List exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, id)
import Players.Messages exposing (..)
import Players.Models exposing (Player, Cheese)


view : List Player -> Html Msg
view players =
    div []
        [ header players
        , nav players
        , list players
        ]

header : List Player -> Html Msg
header players =
  div [ class "clearfix mb2 bg-white black", id "hi"]
    [ div [ class "right" ] [ text "Made By Me" ] ]

nav : List Player -> Html Msg
nav players =
    div [ class "clearfix mb2 white bg-black" ]
        [ div [ class "left p2" ] [ text "Players" ] ]


list : List Player -> Html Msg
list players =
    div [ class "p2" ]
        [ table []
            [ thead []
                [ tr []
                    [ th [ class "classTest classTest2" ] [ text "Id" ]
                    , th [] [ text "Name" ]
                    , th [] [ text "Level" ]
                    , th [] [ text "Actions" ]
                    ]
                ]
            , tbody [] (List.map playerRow players)
            ]
        ]


playerRow : Player -> Html Msg
playerRow player =
    tr []
        [ td [] [ text player.id ]
        , td [] [ text player.name ]
        , td [] [ text (toString player.level) ]
        , td []
            []
        ]
