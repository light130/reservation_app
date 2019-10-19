Rails.application.routes.draw do
  root to: 'home#top'
  devise_for :users, controllers: {
     sessions: 'users/sessions',
     passwords: 'users/passwords',
     registrations: 'users/registrations'
   }
   resources :reservations do
     member do
       get 'confirmation'
     end
   end
end
