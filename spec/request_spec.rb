require "rails_helper"
require_relative "../app/api/pokeapi/request"
require_relative "../app/api/pokeapi/error"

RSpec.describe Pokeapi::Request do

  let(:base_url) { ENV["POKEAPI_BASE_URL"] }

  describe '#get' do
    context 'when successful' do
      it 'fetches data from API endpoint' do
        allow_any_instance_of(Pokeapi::Request).to receive(:get)
          .with("pokemon")
          .and_return({ "name" => "Pikachu" })
        
        request = Pokeapi::Request.new
        response = request.get("pokemon")
        expect(response['name']).to eq("Pikachu")
      end
    end
    
    context 'when encountering 404 error' do
      it 'raises NotFoundError' do
        allow_any_instance_of(Pokeapi::Request).to receive(:get)
          .with("pokemon/999999")
          .and_raise(Pokeapi::Errors::NotFoundError)
        
        request = Pokeapi::Request.new
        expect { request.get("pokemon/999999") }.to raise_error(Pokeapi::Errors::NotFoundError)
      end
    end
    
    context 'when encountering server error' do
      it 'raises ServerError' do
        allow_any_instance_of(Pokeapi::Request).to receive(:get)
          .with("pokemon")
          .and_raise(Pokeapi::Errors::ServerError)
        
        request = Pokeapi::Request.new
        expect { request.get("pokemon") }.to raise_error(Pokeapi::Errors::ServerError)
      end
    end
  end
end
