class CreateCoverLetters < ActiveRecord::Migration[7.1]
  def change
    create_table :cover_letters do |t|
      t.string :title
      t.references :resume, foreign_key: true
      t.string :file_name
      t.integer :version

      t.timestamps
    end
  end
end
