class UserController < ApplicationController
  before_action :authenticate_user, only: [:index, :current]

  def index
    json_response({message: 'Logged In'})
  end

  def current
    current_user.update!(last_login, Time.now)
    json_response(current_user)
  end

  def create_user
    user = User.create!(user_params)
    json_response({message: "User was created"}, :created)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
