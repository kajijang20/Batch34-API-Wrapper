require "dotenv/load"
require_relative "request"

module Pokeapi
  class Client
    def initialize
      @request = Pokeapi::Request.new
    end

    def fetch_pokemon_list
      @request.fetch_pokemon_list
    end

    def fetch_pokemon(name_or_id)
      @request.fetch_pokemon(name_or_id)
    end

    # Berry methods

    def fetch_berry_list
      @request.fetch_berry_list
    end

    def fetch_berry(name_or_id)
      @request.fetch_berry(name_or_id)
    end

    def fetch_berry_flavor_list
      @request.fetch_berry_flavor_list
    end

    def fetch_berry_flavor(name_or_id)
      @request.fetch_berry_flavor(name_or_id)
    end

    # Contest methods

    def fetch_contest_list
      @request.fetch_contest_list
    end

    def fetch_contest(name_or_id)
      @request.fetch_contest(name_or_id)
    end

    def fetch_contest_effects_list
      @request.fetch_contest_effects_list
    end

    def fetch_contest_effects(id)
      @request.fetch_contest_effects(id)
    end

    # Encounters methods

    def fetch_encounter_list
      @request.fetch_encounter_list
    end

    def fetch_encounter(name_or_id)
      @request.fetch_encounter(name_or_id)
    end

    def fetch_encounter_condition_list
      @request.fetch_encounter_condition_list
    end

    def fetch_encounter_condition(name_or_id)
      @request.fetch_encounter_condition(name_or_id)
    end

    # Evolution methods

    def fetch_evolution_list
      @request.fetch_evolution_list
    end

    def fetch_evolution(id)
      @request.fetch_evolution(id)
    end

    def fetch_evolution_trigger_list
      @request.fetch_evolution_trigger_list
    end

    def fetch_evolution_trigger(name_or_id)
      @request.fetch_evolution_trigger(name_or_id)
    end

    # Game Generation methods

    def fetch_generation_list
      @request.fetch_generation_list
    end

    def fetch_generation(name_or_id)
      @request.fetch_generation(name_or_id)
    end

    def fetch_pokedex_list
      @request.fetch_pokedex_list
    end

    def fetch_pokedex(name_or_id)
      @request.fetch_pokedex(name_or_id)
    end

    # Item methods

    def fetch_item_list
      @request.fetch_item_list
    end

    def fetch_item(name_or_id)
      @request.fetch_item(name_or_id)
    end

    def fetch_item_category_list
      @request.fetch_item_category_list
    end

    def fetch_item_category(name_or_id)
      @request.fetch_item_category(name_or_id)
    end

    # Location methods

    def fetch_location_list
      @request.fetch_location_list
    end

    def fetch_location(name_or_id)
      @request.fetch_location(name_or_id)
    end

    # Move methods

    def fetch_move_list
      @request.fetch_move_list
    end

    def fetch_move(name_or_id)
      @request.fetch_move(name_or_id)
    end

    # Ability methods

    def fetch_ability_list
      @request.fetch_ability_list
    end

    def fetch_ability(name_or_id)
      @request.fetch_ability(name_or_id)
    end

    def fetch_characteristic_list
      @request.fetch_characteristic_list
    end

    def fetch_characteristic(id)
      @request.fetch_characteristic(id)
    end

  end
end
