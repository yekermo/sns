# encoding: utf-8

require_relative '../panels/tkey_panel'

module Result
 class ResultSetPage
    
    include PageObject
    include TKeyPanel
    include DataMagic
     
    div(:sns_no_result_text, id: 'rmMessage')
    div(:sns_no_result_search_text, xpath: ".//*[@id='body']/div[2]")
    div(:sns_no_result_search_tipstext, id: 'tipPane')
    div(:sns_search_keyword_not_foundtext, id: 'rmDescription')
    div(:sns_page_title_text, class: 'header')
    div(:sns_narrow_list_filter, id: 'searchItemsSection')
    
    def is_result_text(load_value_yml, page_text)
      unless send("#{page_text}_element").text.gsub(/\s+/, ' ').strip == load_value_yml[page_text].gsub(/\s+/, ' ').strip
        raise 'Text is NOT matching'
      end
    end
    
    def check_page_title(title)
          unless sns_page_title_text.gsub(/\s+/, ' ').strip == title.gsub(/\s+/, ' ').strip
            raise 'Page Title NOT matching'
          end
    end
	
	def is_list_filters
      raise 'Filter list is NOT present' unless sns_narrow_list_filter?
    end
 end
end