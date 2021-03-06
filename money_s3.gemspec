lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'money_s3'
  spec.version       = '2.4.0'
  spec.authors       = ['Premysl Donat']
  spec.email         = ['pdonat@seznam.cz']

  spec.summary       = 'MoneyS3 XML parser and builder'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/Masa331/moneys3'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'ox'
  spec.add_dependency 'damedata_parser_core'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'saharspec'
  spec.add_development_dependency 'nokogiri'
end
