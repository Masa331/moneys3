module MoneyS3
  module Parsers
    class Valuty
      include ParserCore::BaseParser

      def zaklad_mj
        at 'Zaklad_MJ'
      end

      def zaklad_mj_attributes
        attributes_at 'Zaklad_MJ'
      end

      def dph_mj
        at 'DPH_MJ'
      end

      def dph_mj_attributes
        attributes_at 'DPH_MJ'
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

        hash[:zaklad_mj] = zaklad_mj if has? 'Zaklad_MJ'
        hash[:zaklad_mj_attributes] = zaklad_mj_attributes if has? 'Zaklad_MJ'
        hash[:dph_mj] = dph_mj if has? 'DPH_MJ'
        hash[:dph_mj_attributes] = dph_mj_attributes if has? 'DPH_MJ'
        hash[:zaklad] = zaklad if has? 'Zaklad'
        hash[:zaklad_attributes] = zaklad_attributes if has? 'Zaklad'
        hash[:dph] = dph if has? 'DPH'
        hash[:dph_attributes] = dph_attributes if has? 'DPH'

        hash
      end
    end
  end
end