module MoneyS3
  module Builders
    class Data7
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :bank_ucet_pokladna
          root << BankUcetPokladnaType.new('BankUcetPokladna', data[:bank_ucet_pokladna]).builder
        end

        root
      end
    end
  end
end