module ActiveRecord
  class Base
    class << self
      attr_accessor :has_many_inversing unless respond_to?(:has_many_inversing)
    end
  end
end
