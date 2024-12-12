class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :handle_invalid_record

  def create
    user = User.create!(user_params)
    @token = encode_token(user_id: user.id)
    render json: {
        user: UserSerializer.new(user),
        token: @token
    }, status: :created
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end

  def handle_invalid_record(error)
    render json: { error: error.message }, status: :unprocessable_entity
  end
end
