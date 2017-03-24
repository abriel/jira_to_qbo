Gem::Specification.new do |s|
  s.name        = 'jira_to_qbo'
  s.version     = '0.5.0'
  s.summary     = 'Report the latest JIRA activity to PM'
  s.description = 'Script that takes your daily JIRA work log and ' \
  'sends an email report to your project manager.'

  s.authors     = ['Dmitry Pisarev']
  s.email       = 'sorra7@gmail.com'
  s.executables << 'jira_to_qbo'
  s.files       = [
    'jira_to_qbo.yaml.example',
    'README.rdoc',
    'resources/email_report.erb',
    'lib/jira_to_qbo.rb',
    'lib/jira_to_qbo/email_report.rb'
  ]
  s.license     = 'GPL-2.0'
  s.homepage = 'https://github.com/abriel/jira_to_qbo'
  s.post_install_message = 'To use jira_to_qbo you need to create ' \
  '~/.jira_to_qbo.yaml file.'

  s.add_runtime_dependency 'jira-ruby', '~> 0.1.17'
  s.add_runtime_dependency 'colorize', '~> 0.7.7'
  s.add_runtime_dependency 'pony', '~> 1.11'

  s.required_ruby_version = '>= 1.9'
end
