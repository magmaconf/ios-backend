Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  api vendor_string: 'magmaconf', default_version: 1, path: 'v1', defaults: { format: :json } do
    version 1 do
      cache as: 'v1' do
        resources :speakers, only: :index
        resources :events, only: :index
      end
    end
  end
end
