Rails.application.routes.draw do

  root :to => "home#index"

  devise_for :users
  
  post 'post/:post_id/like' => 'likes#like_toggle'
    get 'users/sign_out'
    
    resources :posts, 
    except: [:show] do post "/like", to: "likes#like_toggle" 
    end


  get 'home/index'
  resources :posts
  
  get '/portfolio' => "home#portfolio"
  get 'home/portfolio'
  
  post '/posts/:post_id' =>"comments#create"
  delete '/posts/:post_id/comments/:id' =>"comments#destroy"
  post '/posts/:post_id/comments/:id' =>"comments#update"
  post '/tinymce_assets' => 'tinymce_assets#create'
  

  get "getdata" => "home#data"
  post "/data" => "home#data"
  get "list" =>"home#list"
  get "many" =>"home#many"
   
   get '/update' =>'home#update'
   post '/updateok/:id' => 'home#updateok'
   get '/delete' =>'home#delete'
   get '/delete/:del_id' =>'home#delete' , as: "home_delete"
   get '/detail' =>'home#detail'
   get '/detail/:id' =>"home#detail", as: "details"
   get '/detail/:id/update' => "home#update", as: "home_update"
  
  post 'home/reply_ok/:id' => 'home#reply_ok'
  get 'home/reply_del/:id' => 'home#reply_del'
  get 'home/reply_update' => 'home#reply_update'
  get 'home/reply_update/:id' => 'home#reply_update'
  post 'home/reply_update_ok/:id' => 'home#reply_update_ok'
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end