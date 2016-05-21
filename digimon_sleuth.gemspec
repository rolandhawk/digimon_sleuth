lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name        = 'digimon_sleuth'
  spec.version     = '0.0.2'
  spec.date        = '2016-05-21'
  spec.summary     = "Digimon Cyber Sleuth!"
  spec.description = "A simple gem"
  spec.authors     = ["Roland Rifandi Utama"]
  spec.email       = 'roland_hawk@yahoo.com'
  spec.required_ruby_version = ">= 2.3.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end
