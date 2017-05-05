Pod::Spec.new do |s|
  s.name                  = 'Benchmark'
  s.version               = '2.0'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.11'
  s.summary               = 'The Benchmark⏲ module provides methods to measure and report the time used to execute Swift code.'
  s.description           = <<-DESC
  The Benchmark⏲ module provides methods to measure and report the time used to execute Swift code. for example:

  Benchmark.measure() {
      // some processes
  }

  ⏲{
      // some processes
  }
                            DESC
  s.homepage              = 'https://github.com/WorldDownTown/Benchmark'
  s.license               = { type: 'MIT', file: 'LICENSE' }
  s.author                = { WorldDownTown: 'WorldDownTown@gmail.com' }
  s.social_media_url      = 'http://twitter.com/WorldDownTown'
  s.source                = { git: 'https://github.com/WorldDownTown/Benchmark.git', tag: s.version }
  s.source_files          = 'Benchmark/Benchmark.swift'
end
