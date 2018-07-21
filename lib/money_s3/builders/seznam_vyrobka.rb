module MoneyS3
  module Builders
    class SeznamVyrobka
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :vyrobka
          data[:vyrobka].each { |i| root << Vyrobka.new('Vyrobka', i).builder }
        end

        root
      end
    end
  end
end