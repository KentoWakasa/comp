Rails.application.routes.draw do


  scope module: :public do
    get 'post_images/new'
    post 'post_images' => 'post_images#create'
    get 'post_images/index'
    get 'post_images/show/:id' => 'post_images#show', as: 'show_post_image'
    get 'post_images/edit/:id' => 'post_images#edit', as: 'edit_post_image'
    patch 'post_images/update/:id' => 'post_images#update', as: 'update_post_image'
    delete 'post_images/destroy/:id' => 'post_images#destroy', as: 'destroy_post_image'
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
