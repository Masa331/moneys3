module MoneyS3
  module Builders
    class SeznamBankDokl < SeznamType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :bank_dokl
          data[:bank_dokl].each { |i| root << BankDokl.new('BankDokl', i).builder }
        end

        root
      end
    end
  end
end