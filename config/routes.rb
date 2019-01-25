Rails.application.routes.draw do

    root :to => 'top#home'
    get 'top/about', as: :about
    get 'top/contact', as: :contact

    # resourcesを使うように
    resources :topics, only: %i[index create destroy] do
      resources :posts,only: %i[new create]
    end
end
