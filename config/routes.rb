Rails.application.routes.draw do
  namespace :api, format: 'json' do
    resources :tasks, only: [:index, :create, :update]
  end
end
