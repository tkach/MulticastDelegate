Pod::Spec.new do |s|
  s.name     = 'MulticastDelegate'
  s.version  = '1.0.0'
  s.platform = :ios, '4.3'
  s.license  = { :type => 'MIT'}
  s.summary  = 'Multicast delegate implementation.'
  s.homepage = 'https://github.com/tkach/MulticastDelegate'
  s.author   = { 'Alexander Tkachenko' => 'tkach2004@gmail.com' }

  s.source   = { :git => 'https://github.com/tkach/MulticastDelegate.git'}

  s.description  = '.'
  s.source_files = 'MulticastDelegate/*.{h,m}', 'MulticastDelegate/MulticastDelegate/MulticastDelegate/*.{h,m}
  s.requires_arc = true
end