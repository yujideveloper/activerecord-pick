# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "activerecord/pick/version"

Gem::Specification.new do |spec|
  spec.name          = "activerecord-pick"
  spec.version       = ActiveRecord::Pick::VERSION
  spec.authors       = ["Yuji Hanamura"]
  spec.email         = ["yuji.developer@gmail.com"]

  spec.summary       = "This gem provides the functionality of ActiveRecord::Relation#pick for Rails 5 and 4.2 apps."
  spec.description   = "This gem provides the functionality of ActiveRecord::Relation#pick for Rails 5 and 4.2 apps."
  spec.homepage      = "https://github.com/yujideveloper/activerecord-pick"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ">= 4.2", "< 6.0"

  spec.add_development_dependency "bundler", ">= 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", ">= 0.51.0"
  spec.add_development_dependency "sqlite3", "~> 1.3.13"
end
