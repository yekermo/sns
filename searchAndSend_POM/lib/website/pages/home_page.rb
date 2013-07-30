# encoding: utf-8

module SearchKeyword
  class HomePage

    include PageObject
    include DataMagic

    page_url (ENV['URL'])
    
    text_field :keyword_webid,  name: 'Keyword'
    button :submit_button,   value: 'Search'
    
    def loading_yml_file
      if ENV['SITE'] == 'MCOM'
        return YAML.load_file('config/MCOM/values.yml')
      elsif ENV['SITE'] == 'BCOM'
        return YAML.load_file('config/BCOM/values.yml')
      end
    end
    
    def enter_keyword(keyword)
      self.keyword_webid = keyword
      self.click_submit_button
    end
    
    def click_submit_button
      submit_button_element.click
    end
  end
end
