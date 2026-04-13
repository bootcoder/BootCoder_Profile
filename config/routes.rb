Rails.application.routes.draw do
  resources :cover_letters
  resources :resumes

  resources :posts do
    resources :comments, only: :create
  end

  resources :users

  root to: 'users#index'

  resources :projects

  get 'gallery', to: 'users#gallery'
  # get 'resume', to: 'users#resume_recaptcha', as: :resume
  # post 'resume', to: 'users#resume'

  flipper_constraint = lambda { |request| request.cookies['flippy_flapper'] == 'true' }
  constraints flipper_constraint do
    mount Flipper::UI.app(Flipper) => '/flippy'
  end
end
