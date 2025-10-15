class AddSourceToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :source, :string
  end
end
