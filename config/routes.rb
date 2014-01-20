FriendsApp::Application.routes.draw do
  resources :users do
    resources :circles, :only => [:index, :create, :destroy, :update]
    resources :posts, :only => [:index, :create, :destroy]
    resources :photos, :only => [:index, :create, :destroy, :show]
  end

  resources :memberships, :only => [:new, :index, :create, :update, :destroy]

  resource :session, :only => [:new, :create, :destroy]

  root :to => "root#root"
end
