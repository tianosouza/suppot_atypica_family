class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email
end
# Compare this snippet from spec/requests/users_spec.rb:
# require 'rails_helper'
# 
# RSpec.describe "Users", type: :request do
#   describe "POST /users" do
#     context 'when valid params' do
#       it 'creates a new user' do
#         post '/users', params: {
#             first_name: "Andreas",
#             last_name: "Prokop",
#             username: "andreas",
#             email: "",
#             password: "",
#             password_confirmation: ""
#             }
#             expect(response).to have_http_status(:created)
#             expect(response.body).to include("Andreas")
#             expect(response.body).to include("Prokop")
#             expect(response.body).to include("andreas")
#             expect(response.body).to include("email")
#             expect(response.body).to include("password")
#             expect(response.body).to include("password_confirmation")
#             expect(response.body).to include("token")
#             expect(response.body).to include("id")
#             expect(response.body).to include("username")
#             expect(response.body).to include("email")
#             expect(response.body).to include("first_name")
#             expect(response.body).to include("last_name")
#             expect(response.body).to include("password_digest")
#             expect(response.body).to include("created_at")
#             expect(response.body).to include("updated_at")
#             expect(response.body).to include("password_digest")
#             expect(response.body).to include("password_confirmation")
#             expect(response.body).to include("password")
#             expect(response.body).to include("email")
#               
#       end