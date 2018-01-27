require 'money_s3/base_element'
require 'money_s3/bank_spojeni_type'

module MoneyS3
  class SeznamBankSpojeni
    include BaseElement

    def bank_spojeni
      element_xml = at :BankSpojeni

      BankSpojeniType.new(element_xml) if element_xml
    end
  end
end
