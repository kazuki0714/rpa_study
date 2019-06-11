Rails.application.routes.draw do
  get 'nuances/index'
  get '/customers' => "customers#index" #顧客情報一覧
  get '/customers/new' => "customers#new" #顧客情報新規登録
  post '/customers/create' => "customers#create" #顧客情報登録するときの操作
  get '/customers/:id' => "customers#show" #顧客詳細画面
  get '/customers/:id/edit' => "customers#edit"
  post '/customers/:id/update' => "customers#update" #更新
  post "/customers/:id/destroy" => "customers#destroy" #削除

  get '/orders' => "orders#index" #顧客情報詳細に表示されるスワッチ一覧
  get '/customers/:id/orders/new' => "orders#new" #スワッチ登録画面
  post '/customers/:id/orders/create' => "orders#create" #登録時の操作

  get '/fabrics' => "fabrics#index" #生地一覧
  get '/fabrics/new' => "fabrics#new" #生地リスト作成
  post '/fabrics/create' => "fabrics#create" #生地リスト作成時の操作
  get '/fabrics/:id' => "fabrics#show"
  get '/fabrics/:id/edit' => "fabrics#edit" # 編集
  post '/fabrics/:id/update' => "fabrics#update" # 更新
  post "/fabrics/:id/destroy" => "fabrics#destroy" # 削除

  get '/nuances' => "nuances#index"
  get '/nuances/search' => "nuances#search"
  get '/nuances/new'




  get '/' => "homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
