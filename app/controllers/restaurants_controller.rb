#index

#new -- get route, for the form that is used to create model
get '/restaurants/new' do
  erb :'restaurants/new'
end

#show
get 'restaurants/:id' do
  @restaurant = Restaurant.find_by(id: params[:id])
  erb :'restaurants/show' 
end

#create -- the post route assoicated with an new restaurant form
post '/restaurants' do
  restaurant = Restaurant.new(params[:restaurant])
  if restaurant.save
    redirect "/restaurants/#{restaurant.id}"
  else
    return [500, "You Blew it"]
  end 
end

#edit
#update

#delete