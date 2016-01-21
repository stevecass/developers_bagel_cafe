#index
get '/restaurants' do 
  @restaurants = Restaurant.all
  erb :'restaurants/index'
end

#new -- get route, for the form that is used to create model
get '/restaurants/new' do
  erb :'restaurants/new'
end

#show
get '/restaurants/:id' do
  @restaurant = Restaurant.find_by(id: params[:id])
  erb :'restaurants/show' 
end

#create -- the post route assoicated with an new restaurant form
post '/restaurants' do
  restaurant = Restaurant.new(params[:restaurant])
  if restaurant.save
    redirect "/restaurants/#{restaurant.id}"
    "/restaurants/4"
  else
    return [500, "You Blew it"]
  end 
end

#edit
get '/restaurants/:id/edit' do
  @restaurant = Restaurant.find_by(id: params[:id])
  erb :'restaurants/edit' 
end

#update
put '/restaurants/:id' do
  restaurant = Restaurant.find_by(id: params[:id])
  restaurant.update_attributes(params[:restaurant])
  redirect "/restaurants"
end


#delete
delete '/restaurants/:id' do
  restaurant = Restaurant.find_by(id: params[:id])
  restaurant.destroy
  redirect "/restaurants"
end