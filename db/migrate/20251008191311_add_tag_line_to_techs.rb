class AddTagLineToTechs < ActiveRecord::Migration[7.1]
  def change
    add_column :techs, :tag_line, :string
  end
end
