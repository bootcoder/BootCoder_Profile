class AddDisplayOrderToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :display_order, :int
  end
end
