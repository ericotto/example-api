class API::V1::UsersController < API::V1::ApplicationController

  # before_action :authenticate_user

  def index
    render json: @user
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

end