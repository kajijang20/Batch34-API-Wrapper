# PokeAPI Client Library

This is a simple code that takes in the RESTFul PokeAPI, that is available online, and converts it into an API Wrapper.

## Versions and Gems:
Versions:
* Ruby version ``` 3.2.4 ```
* Rails version ``` 7.1.3 ```

Other Gems
* Dotenv-rails
* Rest-client
* [PokeAPI](https://pokeapi.co/)

## Getting Started:
1. Clone the project
2. Run ``` bundle install ``` as a prerequisite
3. Run ``` rails s ``` to view the project on a browser

## Usage:
Essentially, all you need to do is change the url to either of the following:
```
localhost/pokemon
localhost/pokemon/[name or id]

localhost/berries
localhost/berry/[name or id]
localhost/berry-flavor
localhost/berry-flavor/[name or id]

localhost/contest
localhost/contest/[name or id]
localhost/contest-effect
localhost/contest-effect/[id]

localhost/encounter-method
localhost/encounter-method/[name or id]
localhost/encounter-condition
localhost/encounter-condition/[name_or_id]

localhost/evolution-chain
localhost/evolution-chain/[id]
localhost/evolution-trigger
localhost/evolution-trigger/[name_or_id]

localhost/generation
localhost/generation/[name_or_id]
localhost/pokedex
localhost/pokedex/[name_or_id]

localhost/item"
localhost/item"/[name_or_id]
localhost/item-category"
localhost/item-category"/[name_or_id]

localhost/location
localhost/location/[name_or_id]

localhost/move
localhost/move/[name_or_id]

localhost/ability
localhost/ability/[name_or_id]
localhost/characteristic
localhost/characteristic/[id]

```

### Note:
If you typed the wrong name, you may need to restart the server
