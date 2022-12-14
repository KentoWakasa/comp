Rails.application.routes.draw do


  scope module: :public do
    get 'post_images/new'
    post 'post_images' => 'post_images#create'
    get 'post_images/index'
    get 'post_images/show'
    get 'post_images/edit'
  end

  devise_for :admin, skip: [:registrations, :passwords], controller: {
    sessions: "admin/sessions"
  }
  devise_for :users, skip: [:passwords], controller: {
    sessions: "public/sessions",
    registrations: "public/registrations"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
