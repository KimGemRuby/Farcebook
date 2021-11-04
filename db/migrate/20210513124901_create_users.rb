class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.integer :age
      t.string :email
      t.integer :age
      t.boolean :confirmed, default: false
      t.string :confirmation_token
      t.string :password_digest
      t.boolean :avatar, default: false
      t.string :username


      t.timestamps
    end
  end
end
