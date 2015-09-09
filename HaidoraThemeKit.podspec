Pod::Spec.new do |s|
    s.name             = "HaidoraThemeKit"
    s.version          = "0.1.0"
    s.summary          = "UIKit appearance 的封装."
    s.description      = <<-DESC
                            UIKit appearance 的封装,方便切换全局风格.
                            DESC
    s.homepage         = "https://github.com/Haidora/HaidoraThemeKit"
    s.license          = 'MIT'
    s.author           = { "mrdaios" => "mrdaios@gmail.com" }
    s.source           = { :git => "https://github.com/Haidora/HaidoraThemeKit.git", :tag => s.version.to_s }
    s.platform     = :ios, '7.0'
    s.requires_arc = true
    
    s.source_files = 'Pod/Classes/**/*'
    s.frameworks = 'UIKit', 'Foundation'
end