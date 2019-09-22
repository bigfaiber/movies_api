Rails.application.routes.draw do
  namespace :v1 do
    get 'top100', to: 'movies#top100'
    resources :movies do
    end
  end
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
