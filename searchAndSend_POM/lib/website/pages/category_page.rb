# encoding: utf-8

class CategoryPage
  include PageObject

  radio_button(:radio_button, id: 'optionDiv')
  def verify_radio_button
   raise 'No radio button present' unless radio_button?
  end
end

