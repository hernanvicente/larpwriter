Larpwriter::Application.routes.draw do
  mount RedactorRails::Engine => '/redactor_rails'
  devise_for :users
  root to: "pages#home"

  resources :larps do
    resources :groups
    resources :pcs
    resources :npcs
    resources :players
    resources :npc_players
    resources :organizers
    resources :documents

    get :missing_relationships, on: :member
  end
end
