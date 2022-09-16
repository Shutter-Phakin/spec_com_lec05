Rails.application.routes.draw do
  get 'main/test', to:'main#test'
  get '/', to:"main#first_page"
  post 'main/test'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post 'main/test_re'
  get 'score/list', to:'score#list'
  get 'score/edit'
  post 'score/edit'
  get 'score/list/:id', to: 'score#delete'
  # Defines the root path route ("/")
  # root "articles#index"
end
