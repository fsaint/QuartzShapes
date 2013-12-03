Pod::Spec.new do |s|
  s.name         = 'ShapeLibrary'
  s.version      = '0.0.1'
  s.platform     = :ios, '7.0'

  s.summary      = 'A simple example of drawing shapes with Quartz on iOS'
  s.homepage     = 'https://github.com/fsaint/QuartzShapes'
  s.author       = { 'Felipe Saint-Jean' => 'fsaint@gmail.com' }
  s.source       = { :git => 'https://github.com/fsaint/QuartzShapes.git' }

  s.source_files = 'ShapeLibrary/*.{h,m}'

  s.requires_arc = true
end
