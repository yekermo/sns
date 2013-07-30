# encoding: utf-8

require 'rspec-expectations'
require 'page-object'
require 'ruby-debug'
require 'require_all'

require_all 'lib/website'

World(PageObject::PageFactory)

