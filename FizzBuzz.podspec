Pod::Spec.new do |s|
  s.name             = "FizzBuzz"
  s.version          = "1.0"
  s.summary          = "The open source FizzBuzz Swift implementation"
  s.homepage         = "https://github.com/ivanornes/FizzBuzz"
  s.license          = { :type => 'MIT', :file => 'MIT-LICENSE.txt' }
  s.author           = { "Ivan Ornes" => "ivan.ornes@gmail.com" }
  s.source           = { :git => "https://github.com/ivanornes/FizzBuzz.git", :tag => "v1.0" }
  s.social_media_url = 'https://twitter.com/ivanornes'

  s.platform     = :ios, '14.0'
  s.requires_arc = true
  s.swift_version = '5.0'
 
  s.source_files = 'FizzBuzz/FizzBuzz/*.{swift}'

  s.module_name = 'FizzBuzz'
end
