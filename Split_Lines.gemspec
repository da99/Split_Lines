# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "Split_Lines/version"

Gem::Specification.new do |s|
  s.name        = "Split_Lines"
  s.version     = Split_Lines::VERSION
  s.authors     = ["da99"]
  s.email       = ["i-hate-spam-45671204@mailinator.com"]
  s.homepage    = "https://github.com/da99/Split_Lines"
  s.summary     = %q{Take a string and turn it to an array of lines.}
  s.description = %q{
    A function that splits a string into 
    an Array of stripped, non-empty lines: 
    Strip_Lines(" test \n \n  test ")
  }

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "bacon"
  s.add_development_dependency "rake"
  s.add_development_dependency 'Bacon_Colored'
  s.add_development_dependency 'pry'
  
  # s.rubyforge_project = "Split_Lines"
  # specify any dependencies here; for example:
  # s.add_runtime_dependency "rest-client"
end
