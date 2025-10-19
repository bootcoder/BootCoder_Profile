class Tech < ApplicationRecord
  self.table_name = 'techs'
  validates :rating, :inclusion => { :in => 0..5 }

  has_many :project_techs
  has_many :projects, through: :project_techs
end
