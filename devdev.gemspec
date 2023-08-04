# frozen_string_literal: true

require File.expand_path('lib/devdev/version', __dir__)

Gem::Specification.new do |spec|
  spec.name                   = 'devdev'
  spec.version                = DevDev::VERSION
  spec.authors                = ['Austin Wasson']
  spec.email                  = ['austinpwasson@gmail.com']
  spec.summary                = 'Streamline your local development environment setup process.'
  spec.description            = 'This gem provides the tools to run and document the steps required to set up the development environments of your projects.'
  spec.homepage               = 'https://github.com/austinwasson/devdev'
  spec.license                = 'MIT'
  spec.platform               = Gem::Platform::RUBY
  spec.required_ruby_version  = '>= 2.7.0'
  spec.files                  = Dir['README.md', 'LICENSE', 'CHANGELOG.md', 'lib/**/*.rb', 'lib/**/*.rake',
                                    'devdev.gemspec', '.github/*.md', 'Gemfile', 'Rakefile']
  spec.extra_rdoc_files       = ['README.md']
  spec.executables            = ['devdev']

  spec.add_development_dependency 'rubocop', '~> 1.55'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.23'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
