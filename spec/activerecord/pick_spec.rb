# frozen_string_literal: true

require "spec_helper"

RSpec.describe ActiveRecord::Pick do
  it "has a version number" do
    expect(ActiveRecord::Pick::VERSION).not_to be nil
  end
end
