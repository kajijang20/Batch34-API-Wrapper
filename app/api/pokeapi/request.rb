require_relative "client"

module Pokeapi
  class Request
    def initialize
      @client = Pokeapi::Client.new
    end

    def fetch_pokemon_list
      @client.get_pokemon_list
    end

    def fetch_pokemon(name_or_id)
      @client.get_pokemon(name_or_id)
    end

    # Berry

    def fetch_berry_list
      @client.get_berry_list
    end

    def fetch_berry(name_or_id)
      @client.get_berry(name_or_id)
    end

    def fetch_berry_flavor_list
      @client.get_berry_flavor_list
    end

    def fetch_berry_flavor(name_or_id)
      @client.get_berry_flavor(name_or_id)
    end
    
    # Contest

    def fetch_contest_list
      @client.get_contest_list
    end

    def fetch_contest(name_or_id)
      @client.get_contest(name_or_id)
    end

    def fetch_contest_effects_list
      @client.get_contest_effects_list
    end

    def fetch_contest_effects(id)
      @client.get_contest_effects(id)
    end

    # Encounters

    def fetch_encounter_list
      @client.get_encounter_list
    end

    def fetch_encounter(name_or_id)
      @client.get_encounter(name_or_id)
    end

    def fetch_encounter_condition_list
      @client.get_encounter_condition_list
    end

    def fetch_encounter_condition(name_or_id)
      @client.get_encounter_condition(name_or_id)
    end

    # Evolution

    def fetch_evolution_list
      @client.get_evolution_list
    end

    def fetch_evolution(id)
      @client.get_evolution(id)
    end

    def fetch_evolution_trigger_list
      @client.get_evolution_trigger_list
    end

    def fetch_evolution_trigger(name_or_id)
      @client.get_evolution_trigger(name_or_id)
    end

    # Game Gen

    def fetch_generation_list
      @client.get_generation_list
    end

    def fetch_generation(name_or_id)
      @client.get_generation(name_or_id)
    end

    def fetch_pokedex_list
      @client.get_pokedex_list
    end

    def fetch_pokedex(name_or_id)
      @client.get_pokedex(name_or_id)
    end

    # Item

    def fetch_item_list
      @client.get_item_list
    end

    def fetch_item(name_or_id)
      @client.get_item(name_or_id)
    end

    def fetch_item_category_list
      @client.get_item_category_list
    end

    def fetch_item_category(name_or_id)
      @client.get_item_category(name_or_id)
    end

    # Location

    def fetch_location_list
      @client.get_location_list
    end

    def fetch_location(name_or_id)
      @client.get_location(name_or_id)
    end

    # Moves

    def fetch_move_list
      @client.get_move_list
    end

    def fetch_move(name_or_id)
      @client.get_move(name_or_id)
    end

    # Ability

    def fetch_ability_list
      @client.get_ability_list
    end

    def fetch_ability(name_or_id)
      @client.get_ability(name_or_id)
    end

    def fetch_characteristic_list
      @client.get_characteristic_list
    end

    def fetch_characteristic(id)
      @client.get_characteristic(id)
    end

  end
end
