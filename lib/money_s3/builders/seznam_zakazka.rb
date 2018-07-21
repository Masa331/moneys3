module MoneyS3
  module Builders
    class SeznamZakazka
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :zakazka
          data[:zakazka].each { |i| root << Zakazka.new('Zakazka', i).builder }
        end

        root
      end
    end
  end
end