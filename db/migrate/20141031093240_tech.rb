class Tech < ActiveRecord::Migration
  def change
  	create_table :techs do |t|
  		t.string :tech_img
  		t.string :tech_title
  		t.string :tech_copy
  	end
  end
end
