Rails.application.routes.draw do
  get "pokemon/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "/pokemon", to: "pokemon#index"
  get "/pokemon/:name_or_id", to: "pokemon#pokemon"

  # Berries
  get "/berries", to: "pokemon#berry_list"
  get "/berry/:name_or_id", to: "pokemon#berry"
  get "/berry-flavor", to: "pokemon#berry_flavor_list"
  get "/berry-flavor/:name_or_id", to: "pokemon#berry_flavor"

  # Contest
  get "/contest-type", to: "pokemon#contest_list"
  get "/contest-type/:name_or_id", to: "pokemon#contest"
  get "/contest-effect", to: "pokemon#contest_effects_list"
  get "/contest-effect/:id", to: "pokemon#contest_effects"

  # Encounters
  get "/encounter-method", to: "pokemon#encounter_list"
  get "/encounter-method/:name_or_id", to: "pokemon#encounter"
  get "/encounter-condition", to: "pokemon#encounter_condition_list"
  get "/encounter-condition/:name_or_id", to: "pokemon#encounter_condition"

  # Encounters
  get "/encounter-method", to: "pokemon#encounter_list"
  get "/encounter-method/:name_or_id", to: "pokemon#encounter"
  get "/encounter-condition", to: "pokemon#encounter_condition_list"
  get "/encounter-condition/:name_or_id", to: "pokemon#encounter_condition"

  # Evolution
  get "/evolution-chain", to: "pokemon#evolution_list"
  get "/evolution-chain/:id", to: "pokemon#evolution"
  get "/evolution-trigger", to: "pokemon#evolution_trigger_list"
  get "/evolution-trigger/:name_or_id", to: "pokemon#evolution_trigger"

  # Game Gen
  get "/generation", to: "pokemon#generation_list"
  get "/generation/:name_or_id", to: "pokemon#generation"
  get "/pokedex", to: "pokemon#pokedex_list"
  get "/pokedex/:name_or_id", to: "pokemon#pokedex"

  # Item
  get "/item", to: "pokemon#item_list"
  get "/item/:name_or_id", to: "pokemon#item"
  get "/item-category", to: "pokemon#item_category_list"
  get "/item-category/:name_or_id", to: "pokemon#item_category"

  # Location
  get "/location", to: "pokemon#location_list"
  get "/location/:name_or_id", to: "pokemon#location"
 
  # Moves
  get "/move", to: "pokemon#move_list"
  get "/move/:name_or_id", to: "pokemon#move"
 
  # Ability
  get "/ability", to: "pokemon#ability_list"
  get "/ability/:name_or_id", to: "pokemon#ability"
  get "/characteristic", to: "pokemon#characteristic_list"
  get "/characteristic/:id", to: "pokemon#characteristic"
  
end
