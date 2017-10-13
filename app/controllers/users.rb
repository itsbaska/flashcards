get '/users' do
  @users = User.all
  erb :'/users/index'
end

get '/users/new' do
  @user = User.new
  erb :'/users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/sessions/new'
  else
    @errors = @user.errors.full_messages
    erb :'/users/new'
  end
end
