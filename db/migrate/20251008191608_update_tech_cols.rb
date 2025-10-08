class UpdateTechCols < ActiveRecord::Migration[7.1]
  def change
    rename_column :techs, :tech_img, :img
    rename_column :techs, :tech_title, :title
    rename_column :techs, :tech_copy, :copy
  end
end
