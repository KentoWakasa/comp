Rails.application.routes.draw do

  devise_for :admin, skip: [:registrations, :passwords], controller: {
    sessions: "admin/sessions"
  }
  devise_for :users, skip: [:passwords], controller: {
    sessions: "public/sessions",
    registrations: "public/registrations"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
