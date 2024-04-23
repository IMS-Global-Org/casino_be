@startuml

class Authentication {
  - uuid : String
  + username : String
  - password : String
  + hasAuthenticated?() : Boolean
}

class Client {
  +first_name : String
  +last_name : String
  +date_of_birth : Timestamp
}

class Address {
  + street1 : String
  + street2 : String
  + city : City
  + state : State
  + area_code : Integer
  + area_code_suffix : Integer
  + country : Country
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

Client "1" --* "many" Address
Client --* Authentication
Client "1" --* "many" Game

Address "many" *-- "1" Country
Address "many" *-- "1" State
Address "many" *-- "1" City

Game "1" *-- "many" CardDeck
Game "1" --* "many" Score

CardDeck "1" *-- "many" Card

@enduml
