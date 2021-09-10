class SessionsController < ApplicationController
  def create
    user = User.find_or_create_from_auth_hash!(request.env["omniauth.auth"])#❶
    session[:user_id] = user.id#❷
    redirect_to root_path, notice:"ログインしました"#❸find_or_create_from_auth_hash
  end

  def destroy
    reset_session
    redirect_to root_path, notice: 'ログアウトしました'
  end
end
