class Resume < ApplicationRecord
  enum version: { standard: 0, verbose: 1, virtual: 2, ats_optimized: 3 }
  has_one :cover_letter
end
