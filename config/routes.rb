Mcc::Application.routes.draw do
  get "home/index"

  namespace :mercury do
    resources :images
  end

  mount Mercury::Engine => '/'

  root :to => "home#index"

  match "/save" => "content#save"
end
