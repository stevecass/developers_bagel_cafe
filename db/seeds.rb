dbc_nyc = Restaurant.create(name: 'DBC::NYC', address: '48 Wall St.')

frog_legs = MenuItem.create(restaurant: dbc_nyc, name: 'Chorus Frog Legs', description: 'Crispy Frog Legs Yum', price: 15.95)

ingredient_list = [
  'All purpose flour',
  'Basil',
  'Black pepper',
  'Calvadoa',
  'Capers',
  'Chives',
  'Clarified butter',
  'Dry white wine', 
  'Frogs legs',
  'Garlic cloves',
  'Large Granny Smith apple',
  'Parsley',
  'Salt',
  'Sour cream',
  'Tarragon',
  'Worcestershire sauce']

  ingredient_list.each do |ingredient|
    frog_legs.ingredients << Ingredient.new(name: ingredient)
  end

