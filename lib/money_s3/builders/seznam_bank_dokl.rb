require 'money_s3/builders/base_builder'
require 'money_s3/builders/bank_dokl'

module MoneyS3
  module Builders
    class SeznamBankDokl
      include BaseBuilder

      attr_accessor :bank_dokl

      def builder
        root = Ox::Element.new(element_name)

        if bank_dokl
          bank_dokl.each { |i| root << BankDokl.new(i, 'BankDokl').builder }
        end

        root
      end
    end
  end
end