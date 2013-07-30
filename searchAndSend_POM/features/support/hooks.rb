# encoding: utf-8

require 'watir-webdriver'

Before do
  case ENV['BROWSER']
      when 'ie', 'IE'
        @browser = Watir::Browser.new :ie
      when 'ff'
        @browser = Watir::Browser.new :firefox
       when 'chrome'
         @browser = Watir::Browser.new :chrome
       else  
        @browser = Watir::Browser.new :firefox
       end
  @browser.window.maximize
end

After do
  @browser.close
end
