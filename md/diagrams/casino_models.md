@startuml

class Authentication {
  -uuid : String
  +username : String
  -password : String
  +hasAuthenticated?() : Boolean
}

class Client {
  +first_name : String
  +last_name : String
  +date_of_birth : Timestamp
}

class Address {
  +street1 : String
  +street2 : String
  +city : String[20]
  +state : String[20]
  +area_code : Integer
  +country : String
}

class Game {
  +name : String
}

class CardDeck {
  +brand : String
  +classification : String
  +number : Integer
  +jokers : Boolean
}

class Card {
  +rank : Rank
  +suit : Suit
  +points : Integer
  +name : String[20]
}

class Score {
  +points : Integer
}

class City {
  +name : String
}

class State {
  +name : String
}

class Country {
  +name : String
}

Client "1" *-- "many" Address
Client *-- Authentication
Client "1" *-- "many" Game

Address *-- Country
Address *-- State
Address *-- City

Game "1" *-- "many" CardDeck
Game "1" *-- "many" Score

CardDeck "1" *-- "many" Card

@enduml
