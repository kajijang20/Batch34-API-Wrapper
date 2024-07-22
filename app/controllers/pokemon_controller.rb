class PokemonController < ApplicationController
  def index
    request = Pokeapi::Request.new
    pokemon_list = request.fetch_pokemon_list
    render json: pokemon_list
  end

  def pokemon
    request = Pokeapi::Request.new
    pokemon = request.fetch_pokemon(params[:name_or_id])
    render json: pokemon
  end

  # Berries

  def berry_list
    request = Pokeapi::Request.new
    berry_list = request.fetch_berry_list
    render json: berry_list
  end

  def berry
    request = Pokeapi::Request.new
    berry = request.fetch_berry(params[:name_or_id])
    render json: berry
  end

  def berry_flavor_list
    request = Pokeapi::Request.new
    berry_flavor_list = request.fetch_berry_flavor_list
    render json: berry_flavor_list
  end

  def berry_flavor
    request = Pokeapi::Request.new
    berry_flavor = request.fetch_berry_flavor(params[:name_or_id])
    render json: berry_flavor
  end

  # Contest

  def contest_list
    request = Pokeapi::Request.new
    contest_list = request.fetch_contest_list
    render json: contest_list
  end

  def contest
    request = Pokeapi::Request.new
    contest = request.fetch_contest(params[:name_or_id])
    render json: contest
  end

  def contest_effects_list
    request = Pokeapi::Request.new
    contest_effects_list = request.fetch_contest_effects_list
    render json: contest_effects_list
  end

  def contest_effects
    request = Pokeapi::Request.new
    contest_effects = request.fetch_contest_effects(params[:id])
    render json: contest_effects
  end

  # Encounters

  def encounter_list
    request = Pokeapi::Request.new
    encounter_list = request.fetch_encounter_list
    render json: encounter_list
  end

  def encounter
    request = Pokeapi::Request.new
    encounter = request.fetch_encounter(params[:name_or_id])
    render json: encounter
  end

  def encounter_condition_list
    request = Pokeapi::Request.new
    encounter_condition_list = request.fetch_encounter_condition_list
    render json: encounter_condition_list
  end

  def encounter_condition
    request = Pokeapi::Request.new
    encounter_condition = request.fetch_encounter_condition(params[:name_or_id])
    render json: encounter_condition
  end

  # Evolution

  def evolution_list
    request = Pokeapi::Request.new
    evolution_list = request.fetch_evolution_list
    render json: evolution_list
  end

  def evolution
    request = Pokeapi::Request.new
    evolution = request.fetch_evolution(params[:id])
    render json: evolution
  end

  def evolution_trigger_list
    request = Pokeapi::Request.new
    evolution_trigger_list = request.fetch_evolution_trigger_list
    render json: evolution_trigger_list
  end

  def evolution_trigger
    request = Pokeapi::Request.new
    evolution_trigger = request.fetch_evolution_trigger(params[:name_or_id])
    render json: evolution_trigger
  end

  # Game Gen

  def generation_list
    request = Pokeapi::Request.new
    generation_list = request.fetch_generation_list
    render json: generation_list
  end

  def generation
    request = Pokeapi::Request.new
    generation = request.fetch_generation(params[:name_or_id])
    render json: generation
  end

  def pokedex_list
    request = Pokeapi::Request.new
    pokedex_list = request.fetch_pokedex_list
    render json: pokedex_list
  end

  def pokedex
    request = Pokeapi::Request.new
    pokedex = request.fetch_pokedex(params[:name_or_id])
    render json: pokedex
  end

  # Item

  def item_list
    request = Pokeapi::Request.new
    item_list = request.fetch_item_list
    render json: item_list
  end

  def item
    request = Pokeapi::Request.new
    item = request.fetch_item(params[:name_or_id])
    render json: item
  end

  def item_category_list
    request = Pokeapi::Request.new
    item_category_list = request.fetch_item_category_list
    render json: item_category_list
  end

  def item_category
    request = Pokeapi::Request.new
    item_category = request.fetch_item_category(params[:name_or_id])
    render json: item_category
  end

  # Location

  def location_list
    request = Pokeapi::Request.new
    location_list = request.fetch_location_list
    render json: location_list
  end

  def location
    request = Pokeapi::Request.new
    location = request.fetch_location(params[:name_or_id])
    render json: location
  end

  # Moves

  def move_list
    request = Pokeapi::Request.new
    move_list = request.fetch_move_list
    render json: move_list
  end

  def move
    request = Pokeapi::Request.new
    move = request.fetch_move(params[:name_or_id])
    render json: move
  end

  # Ability

  def ability_list
    request = Pokeapi::Request.new
    ability_list = request.fetch_ability_list
    render json: ability_list
  end

  def ability
    request = Pokeapi::Request.new
    ability = request.fetch_ability(params[:name_or_id])
    render json: ability
  end

  def characteristic_list
    request = Pokeapi::Request.new
    characteristic_list = request.fetch_characteristic_list
    render json: characteristic_list
  end

  def characteristic
    request = Pokeapi::Request.new
    characteristic = request.fetch_characteristic(params[:id])
    render json: characteristic
  end

end
