class CreateResumes < ActiveRecord::Migration[7.1]
  def change
    create_table :resumes do |t|
      t.string :title
      t.string :file_name
      t.integer :download_count
      t.integer :version
      t.string :company

      t.timestamps
    end
  end
end
