Pod::Spec.new do |s|
  s.name         = 'CLTableViewManager'
  s.version      = '0.0.1'
  s.summary      = 'CLTableViewManager'
  s.homepage     = 'https://github.com/JmoVxia/CLTableViewManager'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = {'JmoVxia' => 'JmoVxia@gmail.com'}
  s.ios.deployment_target = '13.0'
  s.source       = {:git => 'https://github.com/JmoVxia/CLTableViewManager', :tag => s.version}
  s.source_files = ['CLTableViewManager/**/*']
  s.swift_versions = ['5.0']
  s.requires_arc = true
end
