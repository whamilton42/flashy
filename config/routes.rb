Flashy::Application.routes.draw do

  resources :flashcards
  
  root :to => "flashcards#index"
end
