class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.text :project_description
      t.string :project_feature_lang
      t.string :project_state

      t.timestamps
    end
  end
end