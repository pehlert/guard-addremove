# -*- encoding: utf-8 -*-
require File.expand_path("../lib/guard/addremove", __FILE__)

Gem::Specification.new do |s|
  s.name         = "guard-addremove"
  s.author       = "Pascal Ehlert"
  s.email        = "pascal@hacksrus.net"
  s.summary      = "Guard gem for running shell commands when files are added or removed"
  s.homepage     = "http://github.com/pehlert/guard-addremove"
  s.version      = Guard::Addremove::VERSION

  s.description  = <<-DESC
    Guard::Addremove automatically runs shell commands when watched files are added or
    removed from the file system.
  DESC

  s.add_dependency 'guard', '>= 0.2.0'

  s.files        = %w(Readme.md LICENSE)
  s.files       += Dir["{lib}/**/*"]
end
