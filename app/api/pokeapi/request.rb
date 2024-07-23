require "rest-client"
require "dotenv/load"

module Pokeapi
  class Request
    def initialize
      @base_url = ENV['POKEAPI_BASE_URL']
    end

    # Error handling
    def get(endpoint)
      response = RestClient.get("#{@base_url}/#{endpoint}")
      handle_response(response)
    rescue RestClient::ExceptionWithResponse => e
      handle_error(e)
    end

    # Pokemon

    def fetch_pokemon_list
      get("pokemon")
    end

    def fetch_pokemon(name_or_id)
      get("pokemon/#{name_or_id}")
    end

    # Berry list

    def fetch_berry_list
      get("berry")
    end

    def fetch_berry(name_or_id)
      get("berry/#{name_or_id}")
    end

    def fetch_berry_flavor_list
      get("berry-flavor")
    end

    def fetch_berry_flavor(name_or_id)
      get("berry-flavor/#{name_or_id}")
    end

    # Contest methods

    def fetch_contest_list
      get("contest-type")
    end

    def fetch_contest(name_or_id)
      get("contest-type/#{name_or_id}")
    end

    def fetch_contest_effects_list
      get("contest-effect")
    end

    def fetch_contest_effects(id)
      get("contest-effect/#{id}")
    end

    # Encounters methods

    def fetch_encounter_list
      get("encounter-method")
    end

    def fetch_encounter(name_or_id)
      get("encounter-method/#{name_or_id}")
    end

    def fetch_encounter_condition_list
      get("encounter-condition")
    end

    def fetch_encounter_condition(name_or_id)
      get("encounter-condition/#{name_or_id}")
    end

    # Evolution methods

    def fetch_evolution_list
      get("evolution-chain")
    end

    def fetch_evolution(id)
      get("evolution-chain/#{id}")
    end

    def fetch_evolution_trigger_list
      get("evolution-trigger")
    end

    def fetch_evolution_trigger(name_or_id)
      get("evolution-trigger/#{name_or_id}")
    end

    # Game Generation methods

    def fetch_generation_list
      get("generation")
    end

    def fetch_generation(name_or_id)
      get("generation/#{name_or_id}")
    end

    def fetch_pokedex_list
      get("pokedex")
    end

    def fetch_pokedex(name_or_id)
      get("pokedex/#{name_or_id}")
    end

    # Item methods

    def fetch_item_list
      get("item")
    end

    def fetch_item(name_or_id)
      get("item/#{name_or_id}")
    end

    def fetch_item_category_list
      get("item-category")
    end

    def fetch_item_category(name_or_id)
      get("item-category/#{name_or_id}")
    end

    # Location methods

    def fetch_location_list
      get("location")
    end

    def fetch_location(name_or_id)
      get("location/#{name_or_id}")
    end

    # Move methods

    def fetch_move_list
      get("move")
    end

    def fetch_move(name_or_id)
      get("move/#{name_or_id}")
    end

    # Ability methods

    def fetch_ability_list
      get("ability")
    end

    def fetch_ability(name_or_id)
      get("ability/#{name_or_id}")
    end

    def fetch_characteristic_list
      get("characteristic")
    end

    def fetch_characteristic(id)
      get("characteristic/#{id}")
    end

    private

    def handle_response(response)
      JSON.parse(response.body)
    end

    def handle_error(error)
      { error: error.message }
    end

  end
end
