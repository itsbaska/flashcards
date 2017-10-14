get '/users' do
  @users = User.all
  erb :'/users/index'
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end

get '/users/new' do
  @user = User.new
  erb :'/users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id

    ep current_user

    redirect '/'
  else
    @errors = @user.errors.full_messages
    erb :'/users/new'
  end
end
