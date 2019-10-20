module MoneyS3
  module Builders
    class SeznamBankDokl
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :bank_dokl
          data[:bank_dokl].each { |i| root << BankDokl.new('BankDokl', i).builder }
        end

        root
      end
    end
  end
end