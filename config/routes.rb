Rails.application.routes.draw do
  resources :sobreviventes do

  end

  get '/abducteds' => 'abducteds#show'
  get '/nonabducteds' => 'abducteds#nonabducteds_show'
  post '/flag_as_abducted/:your_id/:survivor_id' => 'abducteds#flag_as_abducted'
end
