zack = User.create(first_name: 'Zack', last_name: 'Mance', email: 'zack@dbc.com')

dbc_nyc = Restaurant.create(name: 'DBC::NYC', address: '48 Wall St.', owner: zack)

frog_legs = MenuItem.create(restaurant: dbc_nyc, 
                            name: 'Chorus Frog Legs', 
                            description: 'Crispy Frog Legs Yum', 
                            price: 15.95)

fox_stew = MenuItem.create(restaurant: dbc_nyc,
                          name: 'Fox Stew',
                          description: 'The fox no longer says anything, it is a stew now',
                          price: 20.45)

fox_stew = MenuItem.create(restaurant: dbc_nyc,
                          name: 'Fox Stew',
                          description: 'The fox no longer says anything, it is a stew now',
                          price: 20.45)

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
    frog_legs.ingredients << Ingredient.create(name: ingredient)
  end

  ingredient_list = [
    'large Spanish onions',
    'granulated sugar',
    'OReillys Stout',
    'salted butter',
    'beef base',
    'Swiss cheese',
    'Provolone cheese',
    'brioche bread']

  ingredient_list.each do |ingredient|
    fox_stew.ingredients << Ingredient.create(name: ingredient)
  end
