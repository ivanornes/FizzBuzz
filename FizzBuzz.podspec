Pod::Spec.new do |s|
  s.name             = "FizzBuzz"
  s.version          = "1.0"
  s.summary          = "The open source FizzBuzz Swift implementation"
  s.homepage         = "https://github.com/ivanornes/FizzBuzz"
  s.license          = 'MIT'
  s.author           = { "Ivan Ornes" => "ivan.ornes@gmail.com" }
  s.source           = { :git => "https://github.com/ivanornes/FizzBuzz.git", :tag => s.version }
  s.social_media_url = 'https://twitter.com/ivanornes'

  s.platform     = :ios, '14.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resources = 'Pod/Assets/*'

  s.module_name = 'FizzBuzz'
end
