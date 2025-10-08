class AddRatingToTechs < ActiveRecord::Migration[7.1]
  def up
    add_column :techs, :rating, :integer
  end

  def down
    remove_column :techs, :rating
  end
end
