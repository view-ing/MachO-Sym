#
# Be sure to run `pod lib lint MachO-Sym.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MachO-Sym'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MachO-Sym.'

  s.description      = <<-DESC
                    代替dlsym进行符号查找
                       DESC

  s.homepage         = 'https://github.com/liuzuopeng/MachO-Sym'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liuzuopeng' => 'liuzp19890810@gmail.com' }
  s.source           = { :git => 'https://github.com/liuzuopeng/MachO-Sym.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'

  s.source_files = 'MachO-Sym/Classes/**/*'
end
