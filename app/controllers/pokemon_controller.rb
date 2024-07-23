class PokemonController < ApplicationController
  before_action :set_client

  def index
    pokemon_list = @client.fetch_pokemon_list
    render json: pokemon_list
  end

  def pokemon
    pokemon = @client.fetch_pokemon(params[:name_or_id])
    render json: pokemon
  end

  # Berries

  def berry_list
    berry_list = @client.fetch_berry_list
    render json: berry_list
  end

  def berry
    berry = @client.fetch_berry(params[:name_or_id])
    render json: berry
  end

  def berry_flavor_list
    berry_flavor_list = @client.fetch_berry_flavor_list
    render json: berry_flavor_list
  end

  def berry_flavor
    berry_flavor = @client.fetch_berry_flavor(params[:name_or_id])
    render json: berry_flavor
  end

  # Contest

  def contest_list
    contest_list = @client.fetch_contest_list
    render json: contest_list
  end

  def contest
    contest = @client.fetch_contest(params[:name_or_id])
    render json: contest
  end

  def contest_effects_list
    contest_effects_list = @client.fetch_contest_effects_list
    render json: contest_effects_list
  end

  def contest_effects
    contest_effects = @client.fetch_contest_effects(params[:id])
    render json: contest_effects
  end

  # Encounters

  def encounter_list
    encounter_list = @client.fetch_encounter_list
    render json: encounter_list
  end

  def encounter
    encounter = @client.fetch_encounter(params[:name_or_id])
    render json: encounter
  end

  def encounter_condition_list
    encounter_condition_list = @client.fetch_encounter_condition_list
    render json: encounter_condition_list
  end

  def encounter_condition
    encounter_condition = @client.fetch_encounter_condition(params[:name_or_id])
    render json: encounter_condition
  end

  # Evolution

  def evolution_list
    evolution_list = @client.fetch_evolution_list
    render json: evolution_list
  end

  def evolution
    evolution = @client.fetch_evolution(params[:id])
    render json: evolution
  end

  def evolution_trigger_list
    evolution_trigger_list = @client.fetch_evolution_trigger_list
    render json: evolution_trigger_list
  end

  def evolution_trigger
    evolution_trigger = @client.fetch_evolution_trigger(params[:name_or_id])
    render json: evolution_trigger
  end

  # Game Generation

  def generation_list
    generation_list = @client.fetch_generation_list
    render json: generation_list
  end

  def generation
    generation = @client.fetch_generation(params[:name_or_id])
    render json: generation
  end

  def pokedex_list
    pokedex_list = @client.fetch_pokedex_list
    render json: pokedex_list
  end

  def pokedex
    pokedex = @client.fetch_pokedex(params[:name_or_id])
    render json: pokedex
  end

  # Items

  def item_list
    item_list = @client.fetch_item_list
    render json: item_list
  end

  def item
    item = @client.fetch_item(params[:name_or_id])
    render json: item
  end

  def item_category_list
    item_category_list = @client.fetch_item_category_list
    render json: item_category_list
  end

  def item_category
    item_category = @client.fetch_item_category(params[:name_or_id])
    render json: item_category
  end

  # Locations

  def location_list
    location_list = @client.fetch_location_list
    render json: location_list
  end

  def location
    location = @client.fetch_location(params[:name_or_id])
    render json: location
  end

  # Moves

  def move_list
    move_list = @client.fetch_move_list
    render json: move_list
  end

  def move
    move = @client.fetch_move(params[:name_or_id])
    render json: move
  end

  # Abilities

  def ability_list
    ability_list = @client.fetch_ability_list
    render json: ability_list
  end

  def ability
    ability = @client.fetch_ability(params[:name_or_id])
    render json: ability
  end

  def characteristic_list
    characteristic_list = @client.fetch_characteristic_list
    render json: characteristic_list
  end

  def characteristic
    characteristic = @client.fetch_characteristic(params[:id])
    render json: characteristic
  end

  private

  def set_client
    @client = Pokeapi::Client.new
  end

end
