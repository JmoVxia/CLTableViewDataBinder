#source 'https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git'
platform :ios, '15.0'
use_frameworks!
#use_modular_headers!
inhibit_all_warnings!
install! 'cocoapods', :deterministic_uuids => false

target 'CLTableViewDataBinder' do
    inhibit_all_warnings!
    pod 'LookinServer', :subspecs => ['Swift'], :configurations => ['Debug']
    pod 'SnapKit'
    pod 'SwiftFormat/CLI', :configurations => ['Debug']
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['GCC_WARN_INHIBIT_ALL_WARNINGS'] = 'YES'
      deployment_target = config.build_settings['IPHONEOS_DEPLOYMENT_TARGET']
      if !deployment_target.nil? && !deployment_target.empty? && deployment_target.to_f < 15.0
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
      end

      # 排除 arm64 模拟器
#      config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = 'arm64'

      if config.name == 'Debug'
        config.build_settings['OTHER_SWIFT_FLAGS'] = ['$(inherited)', '-Onone']
        config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-O'
        config.build_settings['SWIFT_COMPILATION_MODE'] = 'singlefile'
      else
        config.build_settings['SWIFT_COMPILATION_MODE'] = 'wholemodule'
      end

      # -----------------------------
      # 自动清理 MMKV / MMKVCore 重复的 -lc++
      # -----------------------------
      if ['MMKV', 'MMKVCore'].any? { |lib_name| target.name.include?(lib_name) }
        flags = config.build_settings['OTHER_LDFLAGS']
        if flags
          # 删除重复的 -lc++
          flags = flags.reject { |f| f == '-lc++' }
          config.build_settings['OTHER_LDFLAGS'] = flags
        end
      end
    end
  end
end
