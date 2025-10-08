class Tech < ApplicationRecord
  validates :rating, :inclusion => { :in => 0..5 }
end
