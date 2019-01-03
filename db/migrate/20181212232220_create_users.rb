class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, null: false, unique: true 
      t.string :email, null: false, index: true, unique: true
      t.string :password_digest
      t.string :role, null: false, default: 'user'
      t.datetime :last_login
      t.string :avatar, default: 'https://theimag.org/wp-content/uploads/2015/01/user-icon-png-person-user-profile-icon-20-300x300.png'
      t.timestamps
    end
  end
end
