Rails.application.routes.draw do
  get 'mypage/index'
  get 'top', to: 'top#index'
  post 'top', to:'top#index'

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

  get '/mypage', to:'mypage#index'

  get '/setting',to:'setting#index'
  post '/setting',to:'setting#change'
end
