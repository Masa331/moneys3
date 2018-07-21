module MoneyS3
  module Builders
    class ValutyHraz
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :mena
          root << MenaType.new('Mena', data[:mena]).builder
        end
        root << build_element('Castka', data[:castka], data[:castka_attributes]) if data.key? :castka

        root
      end
    end
  end
end