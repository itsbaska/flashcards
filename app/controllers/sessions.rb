get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.find_by(username: params[:username])

  if @user && @user.authenticate(params[:username], params[:password])
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = ["Login failed. Please re-enter your information"]
    erb :'sessions/new'
  end

end

delete '/sessions' do
  session.delete(:user_id)
  redirect '/'
end
