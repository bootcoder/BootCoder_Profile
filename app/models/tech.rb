class Tech < ApplicationRecord
  self.table_name = 'techs'
  validates :rating, :inclusion => { :in => 0..5 }
end
