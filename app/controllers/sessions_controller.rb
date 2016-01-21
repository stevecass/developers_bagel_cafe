get '/' do
  if params[:error]
    @error='YOU DID SOMETHING WRONG'
  end 
  erb :index
end

post '/sessions' do 
  user = User.find_by(email:params[:email] ) 
  if user && user.password == params[:password] 
    session[:user_id] = user.id
    redirect '/restaurants'
  else
    redirect '/?error=BADDDDDDDD'
  end
end

delete '/sessions/logout' do
  session.clear()
  redirect '/'
end