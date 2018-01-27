require 'money_s3/base_element'
require 'money_s3/dodavka_type'

module MoneyS3
  class SeznamDodavek
    include BaseElement

    def dodavka
      element_xml = at :Dodavka

      DodavkaType.new(element_xml) if element_xml
    end
  end
end
