# frozen_string_literal: true

require "spec_helper"

ActiveRecord::Base.configurations = {
  "test" => { "adapter" => "sqlite3", "database" => ":memory:" }
}
puts ActiveRecord::Base.configurations
ActiveRecord::Base.establish_connection :test

migration_class = if ActiveRecord::VERSION::MAJOR >= 5
                    ActiveRecord::Migration::Current
                  else
                    ActiveRecord::Migration
                  end

class CreateAllTables < migration_class
  def self.up
    create_table(:accounts) do |t|
      t.string :email
      t.string :name
    end
  end
end

ActiveRecord::Migration.verbose = false
CreateAllTables.up

class Account < ActiveRecord::Base
end

RSpec.describe ActiveRecord::Calculations do
  before(:all) do
    Account.create!(email: "account1@example.com", name: "Account1")
    Account.create!(email: "account2@example.com", name: "Account2")
  end

  describe "#pick" do
    context "when specified single column" do
      it "should return single value of specified coluimn" do
        expect(Account.order(:id).pick(:email)).to eq "account1@example.com"
      end

      it "should return nil" do
        expect(Account.where("0=1").pick(:email)).to be_nil
      end
    end

    context "when specified multiple columns" do
      it "should return multiple values of specified columns" do
        expect(Account.order(:id).pick(:name, :email)).to eq ["Account1", "account1@example.com"]
      end

      it "should return value" do
        expect(Account.where("0=1").pick(:name, :email)).to be_nil
      end
    end
  end
end
