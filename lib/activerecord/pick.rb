# frozen_string_literal: true

require "activerecord/pick/version"
require "active_support/lazy_load_hooks"

ActiveSupport.on_load(:active_record) do
  require "activerecord/pick/relation/calculations"
  require "activerecord/pick/querying"
end
