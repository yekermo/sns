# encoding: utf-8

module TKeyPanel
  include PageObject

  div(:T1, id: 'tkey0')
  div(:T2, id: 'tkey1')
  div(:T3, id: 'tkey2')
  div(:T4, id: 'tkey3')
  div(:T5, id: 'tkey4')
  div(:T6, id: 'tkey5')
  div(:T7, id: 'tkey6')
  div(:T8, id: 'tkey7')
  
  def checktKey_no(tkey,status)
    if status == 'No'
      raise 'slected Tkey is NOT inactive status ' unless send("#{tkey}_element").attribute('class').eql?('inactive tkey')
    else
      raise 'slected Tkey is NOT active status' unless send("#{tkey}_element").attribute('class').eql?('active tkey')
    end
  end

  def click_tkey(tkey)
    t_key = tkey[0,2]
    raise "#{tkey} is in inactive state" if send("#{t_key}_element").attribute('class').eql?('inactive tkey')
    if send("#{t_key}_element").text.gsub(/\s+/, ' ').strip == tkey.gsub(/\s+/, ' ').strip
       self.send("#{t_key}_element").link.click
    else
      raise "#{tkey} is mismatch"
    end
  end
end
