require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "POST /users" do
    context 'when valid params' do
      before do
        allow_any_instance_of(ApplicationController).to receive(:logged_in?).and_return(true)
      end
      it 'creates a new user' do
        post '/users', params: {
          first_name: "Andreas",
          last_name: "Prokop",
          username: "andreas",
          email: "andreas@email.com",
          password: "123456",
          password_confirmation: "123456"
        }
        expect(response).to have_http_status(:created)
      end
    end
  end
end
