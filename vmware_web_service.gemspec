lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'VMwareWebService/version'

Gem::Specification.new do |spec|
  spec.name        = "vmware_web_service"
  spec.version     = VMwareWebService::VERSION
  spec.authors     = ["ManageIQ Developers"]
  spec.homepage    = "https://github.com/ManageIQ/vmware_web_service"
  spec.summary     = "A ruby interface to Vmware Web Services SDK"
  spec.description = "A ruby interface to Vmware Web Services SDK"
  spec.licenses    = ["Apache-2.0"]

  spec.files = Dir["{app,config,lib}/**/*"]

  spec.add_dependency "activesupport",        ">= 5.0", "< 5.1"
  spec.add_dependency "ffi",                  "~>1.9.3"
  spec.add_dependency "ffi-vix_disk_lib",     "~>1.0.3"  # used by VixDiskLib
  spec.add_dependency "handsoap",             "~>0.2.5"
  spec.add_dependency "httpclient",           "~>2.7.1"
  spec.add_dependency "manageiq-gems-pending"
  spec.add_dependency "rbvmomi",              "~>1.9.4"

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
