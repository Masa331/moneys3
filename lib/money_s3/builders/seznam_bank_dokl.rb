require 'money_s3/builders/base_builder'
require 'money_s3/builders/bank_dokl'

module MoneyS3
  module Builders
    class SeznamBankDokl
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :bank_dokl
          attributes[:bank_dokl].each { |i| root << BankDokl.new(i, 'BankDokl').builder }
        end

        root
      end
    end
  end
end