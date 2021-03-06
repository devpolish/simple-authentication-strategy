class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
          t.string :email
          t.string :encrypted_password, limit: 128
          t.string :session_token, limit: 128
          t.datetime :current_sign_in_at
          t.string :current_sign_in_ip, limit: 128
          t.datetime :last_sign_in_at
          t.string :last_sign_in_ip, limit: 128
          t.integer :sign_in_count
          t.integer :count_login, default: 0
        end

    add_index :users, :email, unique: true
    add_index :users, :session_token
  end
end
