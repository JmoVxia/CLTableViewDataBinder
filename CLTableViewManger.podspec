Pod::Spec.new do |s|
  s.name         = 'CLTableViewManger'
  s.version      = '0.0.1'
  s.summary      = 'CLTableViewManger'
  s.homepage     = 'https://github.com/JmoVxia/CLTableViewManger'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = {'JmoVxia' => 'JmoVxia@gmail.com'}
  s.ios.deployment_target = '13.0'
  s.source       = {:git => 'https://github.com/JmoVxia/CLTableViewManger', :tag => s.version}
  s.source_files = ['CLTableViewManger/**/*']
  s.swift_versions = ['5.0']
  s.requires_arc = true
end
