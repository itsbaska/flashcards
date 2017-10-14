helpers do

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    session[:user_id] != nil
  end

  def authenticate
    redirect '/sessions' unless logged_in?
  end

  def authorize(user)
    redirect 'sessions/new' unless logged_in?
  end

  def authorized?(user)
    current_user == user
  end

end
