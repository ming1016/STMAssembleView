Pod::Spec.new do |s|
  s.name         = "STMAssembleView"
  s.version      = "1.1"
  s.summary      = "制作一个类似苹果VFL(Visual Format Language)的格式化语言来描述类似UIStackView那种布局思路，并解析生成页面"
  s.homepage     = "https://github.com/ming1016/STMAssembleView"

  s.license      = "MIT"

  s.author       = { "ming1016" => "ming1016@foxmail.com" }
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/ming1016/STMAssembleView.git", :tag => "1.2" }
  s.source_files  = "Classes/**/*.{h,m}"
  s.requires_arc = true
end
