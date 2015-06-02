Gem::Specification.new do |s|
  s.name        = 'jira_to_qbo'
  s.version     = '0.1.0'
  s.date        = '2015-06-02'
  s.summary     = 'Export JIRA work logs to QBO (QuickBooks)'
  s.description = 'Script that takes your daily JIRA work log and' \
  'create QBO entries based on them. Also sends email report.'

  s.authors     = ['Dmitry Pisarev']
  s.email       = 'sorra7@gmail.com'
  s.executables << 'jira_to_qbo'
  s.files       = [
    'jira_to_qbo.yaml.example',
    'README.rdoc'
  ]
  s.license     = 'GPL-2'
  s.homepage = 'https://github.com/abriel/jira_to_qbo'
  s.post_install_message = 'To use jira_to_qbo you need to create ' \
  '~/.jira_to_qbo.yaml file.'

  s.add_runtime_dependency 'selenium-webdriver', '~> 2.45.0'
  s.add_runtime_dependency 'jira-ruby', '~> 0.1.14'
  s.add_runtime_dependency 'colorize', '~> 0.7.7'
end
