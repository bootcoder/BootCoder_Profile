class CreateProjectTechs < ActiveRecord::Migration[7.1]
  def change
    create_table :project_techs do |t|
      t.belongs_to :project, index: true
      t.belongs_to :tech, index: true
      t.timestamps
    end
  end
end
