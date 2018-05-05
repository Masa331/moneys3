module MoneyS3
  module Parsers
    class DoklRefType
      include ParserCore::BaseParser

      def id_dokladu
        at 'IDDokladu'
      end

      def cislo_dokladu
        at 'CisloDokladu'
      end

      def druh_dokladu
        at 'DruhDokladu'
      end

      def rok
        at 'Rok'
      end

      def eet
        submodel_at(EETType, 'EET')
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:id_dokladu] = id_dokladu if has? 'IDDokladu'
        hash[:cislo_dokladu] = cislo_dokladu if has? 'CisloDokladu'
        hash[:druh_dokladu] = druh_dokladu if has? 'DruhDokladu'
        hash[:rok] = rok if has? 'Rok'
        hash[:eet] = eet.to_h_with_attrs if has? 'EET'

        hash
      end
    end
  end
end