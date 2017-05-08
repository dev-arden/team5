Rails.application.routes.draw do

  get 'home/index'

  root 'bucketlist#index'
  get 'bucketlist/index'
  post '/write' => 'bucketlist#write'
  get '/list' => 'bucketlist#list'
  get 'destroy/:bucketlist_id' => 'bucketlist#destroy'
  get 'update_view/:bucketlist_id' => 'bucketlist#update_view'
  post 'update/:bucketlist_id' => 'bucketlist#update'

  get 'myboard/index1'
  post '/write1' => 'myboard#write1'
  get '/list1' => 'myboard#list1'
  get 'destroy1/:mypost_id' => 'myboard#destroy1'
  get 'update_view1/:mypost_id' => 'myboard#update_view1'
  post 'update1/:mypost_id' => 'myboard#update1'
  post 'reply_write' => 'myboard#reply_write'
  
  get 'animal/index2'
  post '/write2' => 'animal#write2'
  get '/list2' => 'animal#list2'
  get 'destroy2/:animalinfo_id' => 'animal#destroy2' 
  get 'update_view2/:animalinfo_id' => 'animal#update_view2' 
  post 'update2/:animalinfo_id' => 'animal#update2' 
  
  get 'food/index3'
  post '/write3' => 'food#write3'
  get '/list3' => 'food#list3'
  get 'destroy3/:foodinfo_id' => 'food#destroy3' 
  get 'update_view3/:foodinfo_id' => 'food#update_view3' 
  post 'update3/:foodinfo_id' => 'food#update3' 
  
  get 'movie/index4'
  post '/write4' => 'movie#write4'
  get '/list4' => 'movie#list4'
  get 'destroy4/:bestmovie_id' => 'movie#destroy4'
  get 'update_view4/:bestmovie_id' => 'movie#update_view4'
  post 'update4/:bestmovie_id' => 'movie#update4' 
  
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
