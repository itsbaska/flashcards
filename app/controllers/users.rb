get '/users' do
  @users = User.all
  erb :'/users/index'
end

get '/users/new' do
  # "Hello"
  # @user = User.new
  erb :'/users/new'
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
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

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end
