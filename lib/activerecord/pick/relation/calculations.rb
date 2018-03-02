module ActiveRecord
  module Calculations
    def pick(*column_names)
      limit(1).pluck(*column_names).first
    end
  end
end
