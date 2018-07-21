module MoneyS3
  module Parsers
    class DoklRefType
      include ParserCore::BaseParser

      def id_dokladu
        at 'IDDokladu'
      end

      def id_dokladu_attributes
        attributes_at 'IDDokladu'
      end

      def cislo_dokladu
        at 'CisloDokladu'
      end

      def cislo_dokladu_attributes
        attributes_at 'CisloDokladu'
      end

      def druh_dokladu
        at 'DruhDokladu'
      end

      def druh_dokladu_attributes
        attributes_at 'DruhDokladu'
      end

      def rok
        at 'Rok'
      end

      def rok_attributes
        attributes_at 'Rok'
      end

      def eet
        submodel_at(EETType, 'EET')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:id_dokladu] = id_dokladu if has? 'IDDokladu'
        hash[:id_dokladu_attributes] = id_dokladu_attributes if has? 'IDDokladu'
        hash[:cislo_dokladu] = cislo_dokladu if has? 'CisloDokladu'
        hash[:cislo_dokladu_attributes] = cislo_dokladu_attributes if has? 'CisloDokladu'
        hash[:druh_dokladu] = druh_dokladu if has? 'DruhDokladu'
        hash[:druh_dokladu_attributes] = druh_dokladu_attributes if has? 'DruhDokladu'
        hash[:rok] = rok if has? 'Rok'
        hash[:rok_attributes] = rok_attributes if has? 'Rok'
        hash[:eet] = eet.to_h if has? 'EET'

        hash
      end
    end
  end
end