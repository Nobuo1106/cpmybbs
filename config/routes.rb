Rails.application.routes.draw do
    get 'topics/index' => 'topics#index'
    get 'topics/show:id' => 'topics#show', as: :topics_show
    get 'topics/about' => 'topics#about', as: :about
    get 'topics/contact' => 'topics#contact', as: :contact
    post 'topics/create' => 'topics#create',  as: :post_create
    delete 'topics/delete/:id' => 'topics#delete', as: :topic_delete
end
