class ApplicationController < ActionController::API
  before_action :logged_in?

  def encode_token(payload)
    JWT.encode(payload, "secret")
  end

  def decode_token
    header = request.headers["Authorization"]
    if header
      token = header.split(" ")[1]
      begin
        JWT.decode(token, "secret")[0]
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    if decode_token
      user_id = decode_token["user_id"]
      @user = User.find(user_id)
    end
  end

  def logged_in?
    unless !!current_user
      render json: { error: "You must be logged in" }, status: :unauthorized
    end
  end
end
