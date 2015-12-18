Pod::Spec.new do |s|
  s.name = 'Texi'
  s.version = '0.1.1'
  s.license = 'MIT'
  s.homepage = 'https://github.com/yukiasai/'
  s.summary = 'Texi is a library that you can easily build NSAttributedString.'
  s.authors = { 'yukiasai' => 'yukiasai@gmail.com' }
  s.source = { :git => 'https://github.com/yukiasai/Texi.git', :tag => s.version }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Classes/*.swift'
end
