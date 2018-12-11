class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string    :email

      t.string    :crypted_password
      t.string    :password_salt

      t.string    :persistence_token
      t.index     :persistence_token, unique: true

      t.datetime  :current_login_at
      t.datetime  :last_login_at
    end
  end
end
