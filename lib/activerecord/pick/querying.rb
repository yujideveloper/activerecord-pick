# frozen_string_literal: true

module ActiveRecord
  module Querying
    delegate :pick, to: :all
  end
end
