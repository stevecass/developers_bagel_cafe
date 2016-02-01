#index
get '/restaurants' do 
  @restaurants = Restaurant.all
  erb :'restaurants/index'
end

#new -- get route, for the form that is used to create model
get '/restaurants/new' do
  if request.xhr?
    erb :'restaurants/_form', layout: false
  else
    erb :'restaurants/new'
  end
end

#show
get '/restaurants/:id' do
  @restaurant = Restaurant.find_by(id: params[:id])
  if request.xhr?
    if params[:type] == 'html'
      return erb :'restaurants/_restaurant', layout: false, locals: {restaurant: @restaurant }
    else
      return @restaurant.to_json
    end
  else
    return erb :'restaurants/show'
  end
end

#create -- the post route assoicated with an new restaurant form
post '/restaurants' do
  new_rest = Restaurant.new(params[:restaurant])
  if new_rest.save
    if request.xhr?
      erb :'restaurants/_restaurant', layout: false, locals: {restaurant: new_rest}
    else
      redirect "/restaurants/#{new_rest.id}"
    end
  else
    return [500, "You Blew it"]
  end 
end

#edit
get '/restaurants/:id/edit' do
  @restaurant = Restaurant.find_by(id: params[:id])
  if request.xhr? 
    erb :'restaurants/_edit_form', layout: false, locals:{restaurant: @restaurant}
  else
    erb :'restaurants/edit' 
  end
end

#update
put '/restaurants/:id' do
  restaurant = Restaurant.find_by(id: params[:id])
  restaurant.update_attributes(params[:restaurant])

  if request.xhr?
    erb :'restaurants/_restaurant', layout: false, locals: {restaurant: restaurant}
  else
    redirect "/restaurants"
  end
end


#delete
delete '/restaurants/:id' do
  restaurant = Restaurant.find_by(id: params[:id])
  restaurant.destroy
  redirect "/restaurants"
end