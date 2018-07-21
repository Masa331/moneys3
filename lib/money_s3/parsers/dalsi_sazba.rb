module MoneyS3
  module Parsers
    class DalsiSazba
      include ParserCore::BaseParser

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def hladina_dph
        at 'HladinaDPH'
      end

      def hladina_dph_attributes
        attributes_at 'HladinaDPH'
      end

      def sazba
        at 'Sazba'
      end

      def sazba_attributes
        attributes_at 'Sazba'
      end

      def zaklad
        at 'Zaklad'
      end

      def zaklad_attributes
        attributes_at 'Zaklad'
      end

      def dph
        at 'DPH'
      end

      def dph_attributes
        attributes_at 'DPH'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:hladina_dph] = hladina_dph if has? 'HladinaDPH'
        hash[:hladina_dph_attributes] = hladina_dph_attributes if has? 'HladinaDPH'
        hash[:sazba] = sazba if has? 'Sazba'
        hash[:sazba_attributes] = sazba_attributes if has? 'Sazba'
        hash[:zaklad] = zaklad if has? 'Zaklad'
        hash[:zaklad_attributes] = zaklad_attributes if has? 'Zaklad'
        hash[:dph] = dph if has? 'DPH'
        hash[:dph_attributes] = dph_attributes if has? 'DPH'

        hash
      end
    end
  end
end