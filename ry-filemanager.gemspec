# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ry-filemanager/version"

Gem::Specification.new do |s|
  s.name        = "ry-filemanager"
  s.version     = RyFilemanager::VERSION
  s.authors     = ["Paul Spieker"]
  s.email       = ["p.spieker@duenos.de"]
  s.homepage    = ""
  s.summary     = %q{A simple file manager for Railsyard CMS}
  s.description = %q{This is a simple file manager for the Railsyard CMS, it's based on the saphira gem.'}

  s.rubyforge_project = "ry-filemanager"

  s.files = Dir["{app,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]
  s.require_paths = ["lib"]

  s.add_dependency "saphira", "~> 0.1.0.beta2"
end
