Rails.application.routes.draw do

  # Routes for the Static_beer resource:
  # CREATE
  get('/static_beers/new', { :controller => 'static_beers', :action => 'new' })
  get('/create_static_beer', { :controller => 'static_beers', :action => 'create' })

  # READ
  get('/static_beers', { :controller => 'static_beers', :action => 'index' })
  get('/static_beers/:id', { :controller => 'static_beers', :action => 'show' })

  # UPDATE
  get('/static_beers/:id/edit', { :controller => 'static_beers', :action => 'edit' })
  get('/update_static_beer/:id', { :controller => 'static_beers', :action => 'update' })

  # DELETE
  get('/delete_static_beer/:id', { :controller => 'static_beers', :action => 'destroy' })
  #------------------------------

  # Routes for the Static_exercise resource:
  # CREATE
  get('/static_exercises/new', { :controller => 'static_exercises', :action => 'new' })
  get('/create_static_exercise', { :controller => 'static_exercises', :action => 'create' })

  # READ
  get('/static_exercises', { :controller => 'static_exercises', :action => 'index' })
  get('/static_exercises/:id', { :controller => 'static_exercises', :action => 'show' })

  # UPDATE
  get('/static_exercises/:id/edit', { :controller => 'static_exercises', :action => 'edit' })
  get('/update_static_exercise/:id', { :controller => 'static_exercises', :action => 'update' })

  # DELETE
  get('/delete_static_exercise/:id', { :controller => 'static_exercises', :action => 'destroy' })
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get('/users/new', { :controller => 'users', :action => 'new' })
  get('/create_user', { :controller => 'users', :action => 'create' })

  # READ
  get('/users', { :controller => 'users', :action => 'index' })
  get('/users/:id', { :controller => 'users', :action => 'show' })

  # UPDATE
  get('/users/:id/edit', { :controller => 'users', :action => 'edit' })
  get('/update_user/:id', { :controller => 'users', :action => 'update' })

  # DELETE
  get('/delete_user/:id', { :controller => 'users', :action => 'destroy' })
  #------------------------------

  # Overall Index Page:
  get("/", { :controller => 'exercises', :action => "mainindex" })

  # About page:
  get("/about", { :controller => 'exercises', :action => "about"})

  # Routes for the Beer resource:
  # CREATE
  get('/beers/new', { :controller => 'beers', :action => 'new' })
  get('/create_beer', { :controller => 'beers', :action => 'create' })

  # READ
  get('/beers', { :controller => 'beers', :action => 'index' })
  get('/beers/:id', { :controller => 'beers', :action => 'show' })

  # UPDATE
  get('/beers/:id/edit', { :controller => 'beers', :action => 'edit' })
  get('/update_beer/:id', { :controller => 'beers', :action => 'update' })

  # DELETE
  get('/delete_beer/:id', { :controller => 'beers', :action => 'destroy' })
  #------------------------------

  # Routes for the Exercise resource:
  # CREATE
  get('/exercises/new', { :controller => 'exercises', :action => 'new' })
  get('/create_exercise', { :controller => 'exercises', :action => 'create' })

  # READ
  get('/exercises', { :controller => 'exercises', :action => 'index' })
  get('/exercises/:id', { :controller => 'exercises', :action => 'show' })

  # UPDATE
  get('/exercises/:id/edit', { :controller => 'exercises', :action => 'edit' })
  get('/update_exercise/:id', { :controller => 'exercises', :action => 'update' })

  # DELETE
  get('/delete_exercise/:id', { :controller => 'exercises', :action => 'destroy' })
  #------------------------------

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
