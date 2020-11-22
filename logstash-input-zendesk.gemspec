Gem::Specification.new do |s|
  s.name = 'logstash-input-zendesk'
  s.version         = '2.0.0'
  s.licenses = ['Apache License (2.0)']
  s.summary = "This input fetches various objects from Zendesk."
  s.description = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install logstash-input-zendesk-1.0.0.gem. This gem is not a stand-alone program"
  s.authors = ["ppf2"]
  s.homepage = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  #s.add_runtime_dependency "logstash-core", ">= 2.0.0", "< 3.0.0"
  #s.add_runtime_dependency 'logstash-core', '= 5.6.4'
  #s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'logstash-codec-plain', '~> 3.0', '>= 3.0.6'
  #s.add_runtime_dependency 'stud', '>= 0.0.22'
  s.add_runtime_dependency  'stud', '~> 0.0.23'
  #s.add_runtime_dependency 'minitar', '~> 0.8'
  s.add_runtime_dependency 'minitar', '~> 0.9'
  #s.add_development_dependency 'logstash-devutils', '>= 0.0.16'
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_development_dependency 'logstash-devutils'
  #s.add_runtime_dependency 'zendesk_api', ["= 1.11.6"]
  s.add_runtime_dependency 'zendesk_api', '~> 1.28'
end
