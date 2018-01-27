require 'money_s3/base_element'
require 'money_s3/pol_objedn_type'

module MoneyS3
  class SeznamZalPolozek
    include BaseElement

    def polozka
      element_xml = at :Polozka

      PolObjednType.new(element_xml) if element_xml
    end
  end
end
