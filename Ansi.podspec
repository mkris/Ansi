Pod::Spec.new do |s|
  s.name         = 'Ansi'
  s.version      = '3.0.0'
  s.summary      = "Ansi parser written in Swift 5 for constructing NSAttributedStrings."
  s.description = "Ansi parser written in Swift 5 for constructing NSAttributedStrings. Currently supports 8 & 256 bit colors, italic, strikethrough, underline and bold text."
  s.homepage     = 'https://github.com/oleander/Ansi'
  s.license      = 'MIT'
  s.author = { 'Linus Oleander' => 'linus@oleander.io' }
  s.platform = :osx, '10.12'
  s.source = { git: 'https://github.com/mkris/Ansi.git', tag: "#{s.version}" }
  s.source_files = 'Source/**/*.swift'
  s.swift_versions = '5.0'
  s.dependency 'Hue'
  s.dependency 'BonMot'
  s.dependency 'FootlessParser', '~> 0.5.2'
end
