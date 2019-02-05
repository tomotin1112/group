Rails.application.routes.draw do
  get 'userpage/index'
  get 'top', to: 'top#index'
  post 'top', to: 'top#index'
  post '/', to: 'top#post'

  get '/', to: 'login#index'
  post 'login/auth'

  get '/signup', to: 'signup#step1'
  post '/signup', to: 'signup#step1'

  post '/signup/step2'

  get '/signup/step3/:checker', to: 'signup#step3'
  get '/signup/step3'

  post '/signup/check', to: 'signup#check'

  get '/signup/step4'
  post '/signup/step4'

  get '/signup/step5'
  post '/signup/step5'

  get '/signup/step6'

  get '/signup/kiyaku'

  get '/setting', to: 'setting#index'
  get '/setting/index'

  post '/setting', to: 'setting#index'
  get '/setting/mailaddress_completion'


  get '/setting/password_config'
  post '/setting/password_config', to: 'setting#password_config'
  get '/setting/password_completion'

  post '/setting/index', to: 'setting#password_config'

  get '/latestpost', to: 'latestpost#index'

  get '/setting/change_completion', to: 'setting#change_completion'

  get '/userpage', to: 'userpage#index'
  get '/:id', to: 'userpage#index'

end
