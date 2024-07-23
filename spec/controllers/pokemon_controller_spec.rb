require "rails_helper"

RSpec.describe PokemonController, type: :controller do
  render_views

  before do
    view_paths = ActionController::Base.view_paths + [Rails.root.join('app', 'views')]
    allow(controller).to receive(:view_paths).and_return(view_paths)
  end

  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end
  end
  
  describe "GET #pokemon" do
    it "returns a success response" do
      get :pokemon, params: { name_or_id: "pikachu" }
      expect(response).to be_successful
    end
  end
  
end
