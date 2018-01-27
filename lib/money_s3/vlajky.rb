require 'money_s3/base_element'
require 'money_s3/vlajka_type'
require 'money_s3/vlajka_type'

module MoneyS3
  class Vlajky
    include BaseElement

    def global
      element_xml = at :Global

      VlajkaType.new(element_xml) if element_xml
    end

    def user
      element_xml = at :User

      VlajkaType.new(element_xml) if element_xml
    end
  end
end
