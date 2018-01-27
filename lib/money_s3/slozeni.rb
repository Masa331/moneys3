require 'money_s3/base_element'
require 'money_s3/def_sub_pol_type'

module MoneyS3
  class Slozeni
    include BaseElement

    def sub_polozka
      element_xml = at :SubPolozka

      DefSubPolType.new(element_xml) if element_xml
    end
  end
end
