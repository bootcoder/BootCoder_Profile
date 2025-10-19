class Tech < ApplicationRecord
  self.table_name = 'techs'
  validates :rating, :inclusion => { :in => 0..5 }

  has_many :project_techs
  has_many :projects, through: :project_techs

  def self.smart_find(identifier)
    return nil if identifier.blank? || identifier.nil?

    find_by('lower(title) = ?', identifier)
  end
end
