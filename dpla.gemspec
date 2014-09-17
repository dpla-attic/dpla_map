Gem::Specification.new do |s|
  s.name        = "dpla"
  s.version     = '4.0.0.0.pre.1'
  s.platform    = Gem::Platform::RUBY
  s.required_ruby_version     = '>= 1.9.3'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  s.require_paths = ['lib']
end
