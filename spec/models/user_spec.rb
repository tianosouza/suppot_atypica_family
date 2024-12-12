require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    user = build(:user)
    expect(user).to be_valid
  end

  it "is not valid without a first name" do
    user = build(:user, first_name: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without a last name" do
    user = build(:user, last_name: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without an email" do
    user = build(:user, email: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without a username" do
    user = build(:user, username: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without a password_digest" do
    user = build(:user, password_digest: nil)
    expect(user).to_not be_valid
  end

  it "is not valid with a duplicate email" do
    create(:user, email: "andreas@email.com")
    user = build(:user, email: "andreas@email.com")

    expect(user).to_not be_valid
  end
end
