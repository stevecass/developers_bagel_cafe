get '/restaurants/:id/menu_items/new' do 
  restaurant = Restaurant.find_by(id: params[:id])
  erb :'/menu_items/_add_form', layout: false, locals:{restaurant: restaurant}
end

post '/menu_items' do
  item = MenuItem.new(params[:menu_item])
  item.save!
  item.to_json
end

get '/menu_items.json' do 
  @menu_items = MenuItem.all
  @menu_items.to_json
end