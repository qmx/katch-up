$:.unshift(File.join(File.dirname(__FILE__), "lib"))

require "rubygems"
require "bundler"
Bundler.setup

require 'active_support'
require 'weekdays'
require 'katch_up'
