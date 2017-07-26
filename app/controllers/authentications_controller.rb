class AuthenticationsController < ApplicationController
  skip_before_action :authenticate_user!

  def login
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      token = Auth.issue({ id: user.id })
      render json: { token: token, user: UserSerializer.new(user)}, status: :ok

    else
      render json: { errors: ["You didnt say the magic word, or email, who knows?"] }, status: 401
    end
  end

  def register
      user = User.new(user_params)
      if user.save
        render json: user, status: :ok
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
  end

  private
    def user_params
      params.permit(:username, :email, :firstname, :lastname, :password, :password_confirmation, topic_ids: [])
    end

end
