class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :password_confirmation
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
