# encoding: utf-8

class FacetPage
  
  include PageObject
  include PageFactory
  div(:op1, id: 'item_1_1')
  div(:op2, id: 'item_2_1')
  div(:op3, id: 'item_3_1')
  div(:op4, id: 'item_4_1')
  div(:op5, id: 'item_5_1')
  
  def check_filter_header(filter_header)
   raise 'Filter Header mismatch' unless send('op1_element').text.eql?filter_header
  end
  
  def is_outline_and_background(load_value_yml, no_of_times)
   err_msg1 = 'selected product doesnt highlighted with red border and yellow back ground color'
   raise err_msg1 unless send("op#{no_of_times}_element").attribute('class').eql?('filterValue highLightItem')
   bordercolor = browser.div(class: 'filterValue highLightItem').style 'border-top-color'
   err_msg_border = 'selected product doesnt have red border'
   raise err_msg_border unless load_value_yml['sns_red_color1'].eql?(bordercolor) || load_value_yml['sns_red_color2'].eql?(bordercolor)
   bgcolor =  browser.div(class: 'filterValue highLightItem').style 'background-color'
   err_msg_bg = 'selected product doesnt have yellow back ground color'
   raise err_msg_bg unless load_value_yml['sns_yellow_color1'].eql?(bgcolor) || load_value_yml['sns_yellow_color2'].eql?(bgcolor)
  end
  
  def arrow_key(direction, arrow_no_of_times)
     (1..arrow_no_of_times.to_i).each do |i|
    browser.send_keys(:"#{direction}")
    end
  end

  def press_key
    browser.send_keys([:return])
  end
  
end