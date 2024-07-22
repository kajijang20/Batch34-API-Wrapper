require "rest-client"
require "dotenv/load"

module Pokeapi
  class Client
    def initialize
      @base_url = ENV['POKEAPI_BASE_URL']
    end

    # Berry list
    def get_berry_list
      response = RestClient.get("#{@base_url}/berry")
      JSON.parse(response.body)
    end

    def get_berry(name_or_id)
      response = RestClient.get("#{@base_url}/berry/#{name_or_id}")
      JSON.parse(response.body)
    end

    def get_berry_flavor_list
      response = RestClient.get("#{@base_url}/berry-flavor")
      JSON.parse(response.body)
    end

    def get_berry_flavor(name_or_id)
      response = RestClient.get("#{@base_url}/berry-flavor/#{name_or_id}")
      JSON.parse(response.body)
    end

    # Contest list
    def get_contest_list
      response = RestClient.get("#{@base_url}/contest-type")
      JSON.parse(response.body)
    end

    def get_contest(name_or_id)
      response = RestClient.get("#{@base_url}/contest-type/#{name_or_id}")
      JSON.parse(response.body)
    end

    def get_contest_effects_list
      response = RestClient.get("#{@base_url}/contest-effect")
      JSON.parse(response.body)
    end

    def get_contest_effects(id)
      response = RestClient.get("#{@base_url}/contest-effect/#{id}")
      JSON.parse(response.body)
    end

    # Encounters list
    def get_encounter_list
      response = RestClient.get("#{@base_url}/encounter-method")
      JSON.parse(response.body)
    end

    def get_encounter(name_or_id)
      response = RestClient.get("#{@base_url}/encounter-method/#{name_or_id}")
      JSON.parse(response.body)
    end

    def get_encounter_condition_list
      response = RestClient.get("#{@base_url}/encounter-condition")
      JSON.parse(response.body)
    end

    def get_encounter_condition(name_or_id)
      response = RestClient.get("#{@base_url}/encounter-condition/#{name_or_id}")
      JSON.parse(response.body)
    end

    # Evolution list
    def get_evolution_list
      response = RestClient.get("#{@base_url}/evolution-chain")
      JSON.parse(response.body)
    end

    def get_evolution(id)
      response = RestClient.get("#{@base_url}/evolution-chain/#{id}")
      JSON.parse(response.body)
    end

    def get_evolution_trigger_list
      response = RestClient.get("#{@base_url}/evolution-trigger")
      JSON.parse(response.body)
    end

    def get_evolution_trigger(name_or_id)
      response = RestClient.get("#{@base_url}/evolution-trigger/#{name_or_id}")
      JSON.parse(response.body)
    end

    # Game generations
    def get_generation_list
      response = RestClient.get("#{@base_url}/generation")
      JSON.parse(response.body)
    end

    def get_generation(name_or_id)
      response = RestClient.get("#{@base_url}/generation/#{name_or_id}")
      JSON.parse(response.body)
    end

    def get_pokedex_list
      response = RestClient.get("#{@base_url}/pokedex")
      JSON.parse(response.body)
    end

    def get_pokedex(name_or_id)
      response = RestClient.get("#{@base_url}/pokedex/#{name_or_id}")
      JSON.parse(response.body)
    end

    # Items list
    def get_item_list
      response = RestClient.get("#{@base_url}/item")
      JSON.parse(response.body)
    end

    def get_item(name_or_id)
      response = RestClient.get("#{@base_url}/item/#{name_or_id}")
      JSON.parse(response.body)
    end

    def get_item_category_list
      response = RestClient.get("#{@base_url}/item-category")
      JSON.parse(response.body)
    end

    def get_item_category(name_or_id)
      response = RestClient.get("#{@base_url}/item-category/#{name_or_id}")
      JSON.parse(response.body)
    end

    # Location list
    def get_location_list
      response = RestClient.get("#{@base_url}/location")
      JSON.parse(response.body)
    end

    def get_location(name_or_id)
      response = RestClient.get("#{@base_url}/location/#{name_or_id}")
      JSON.parse(response.body)
    end

    # Moves list
    def get_move_list
      response = RestClient.get("#{@base_url}/move")
      JSON.parse(response.body)
    end

    def get_move(name_or_id)
      response = RestClient.get("#{@base_url}/move/#{name_or_id}")
      JSON.parse(response.body)
    end

    # Pokemon Ability list
    def get_ability_list
      response = RestClient.get("#{@base_url}/ability")
      JSON.parse(response.body)
    end

    def get_ability(name_or_id)
      response = RestClient.get("#{@base_url}/ability/#{name_or_id}")
      JSON.parse(response.body)
    end

    def get_characteristic_list
      response = RestClient.get("#{@base_url}/characteristic")
      JSON.parse(response.body)
    end

    def get_characteristic(id)
      response = RestClient.get("#{@base_url}/characteristic/#{id}")
      JSON.parse(response.body)
    end

    # Pokemon list
    def get_pokemon_list
      response = RestClient.get("#{@base_url}/pokemon")
      JSON.parse(response.body)
    end

    def get_pokemon(name_or_id)
      response = RestClient.get("#{@base_url}/pokemon/#{name_or_id}")
      JSON.parse(response.body)
    end

  end
end
