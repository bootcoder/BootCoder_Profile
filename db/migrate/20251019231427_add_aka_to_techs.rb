class AddAkaToTechs < ActiveRecord::Migration[7.1]
  def change
    add_column :techs, :aka, :string
  end
end
