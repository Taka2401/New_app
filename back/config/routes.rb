Rails.application.routes.draw do

  namespace :api do
    namespace :v1, format: 'json' do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations'
      }
      get 'health_check/index', to: 'health_check#index'
    end
  end
end
