Pod::Spec.new do |s|
  s.name         = "mimetic"
  s.version      = "0.9.8b2"
  s.summary      = "Email library (MIME) written in C++."
  s.description  = "mimetic is a free Email library (MIME) written in C++ designed to be easy to use and integrate but yet fast and efficient."
  s.homepage     = "https://github.com/OliverLetterer/mimetic"
  s.license      = 'MIT'
  s.authors          = { "Stefano Barbato" => "stefano@codesink.org" }
  s.platform     = :osx, '10.9'
  s.source       = { :git => "https://github.com/dxdc/mimetic.git", :tag => s.version.to_s }
  s.source_files  = 'mimetic/*.{h,m,cxx}', 'mimetic/**/*.{h,m,cxx}'
  s.header_mappings_dir = 'mimetic'
  s.prefix_header_contents = '#include <unistd.h>', '#include <sys/stat.h>', "#define VERSION \"#{s.version.to_s}\""
  s.library   = 'stdc++'
  s.requires_arc = true
end
