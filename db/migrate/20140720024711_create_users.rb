class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :user_avatar
      t.boolean :user_admin

      t.timestamps
    end
  end
end
