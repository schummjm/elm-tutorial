module Players.Models exposing (..)


type alias PlayerId =
    String

type alias CheeseId =
    Int


type alias Player =
    { id : PlayerId
    , name : String
    , level : Int
    }

type alias Cheese =
  { id : String
  , name : String
  }

new : Player
new =
    { id = "0"
    , name = ""
    , level = 1
    }

new2 : Cheese
new2 =
    { id = "1"
    , name = "Cheddar"
    }
