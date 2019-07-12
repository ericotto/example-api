class User < ActiveRecord::Base
  has_secure_password

  def show
    render json: @user
  end

end
