class Tech < ApplicationRecord
  self.table_name = 'techs'
  validates :rating, :inclusion => { :in => 0..5 }

  has_many :project_techs
  has_many :projects, through: :project_techs

  def self.smart_find(identifier)
    return nil if identifier.blank? || !identifier.is_a?(String)

    val = identifier.downcase
    find_by('lower(title) = ? OR lower(aka) = ?', val, val)
  end

  def self.smart_find_or_create(identifier)
    target = nil
    # First Case -- Hash Args
    if identifier.is_a?(Hash)
      identifier.each do |k,v|
        target = smart_find(v)
      end
    end

    # Second Case -- String Args if no target present
    target = smart_find(identifier) if identifier.is_a?(String) && target.nil?
    return target if target


    target = if identifier.respond_to?(:keys)
      create(identifier.merge(rating: 0))
    elsif identifier.is_a?(String)
      create(title: identifier, rating: 0)
    end

    target
  end
end
