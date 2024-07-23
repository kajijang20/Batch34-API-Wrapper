require "rails_helper"
require_relative "../app/api/pokeapi/client"

RSpec.describe Pokeapi::Client do
  describe '#fetch_pokemon_list' do
    it 'returns a list of pokemons' do
      allow_any_instance_of(Pokeapi::Request).to receive(:fetch_pokemon_list).and_return([{ "name" => "bulbasaur" }])
      
      client = Pokeapi::Client.new
      pokemon_list = client.fetch_pokemon_list
      expect(pokemon_list.first["name"]).to eq("bulbasaur")
    end
  end
  
  describe '#fetch_pokemon' do
    it 'returns a pokemon by name/id' do
      allow_any_instance_of(Pokeapi::Request).to receive(:fetch_pokemon).with("pikachu").and_return({ "name" => "pikachu" })
      
      client = Pokeapi::Client.new
      pokemon = client.fetch_pokemon("pikachu")
      expect(pokemon["name"]).to eq("pikachu")
    end
  end
  
end
