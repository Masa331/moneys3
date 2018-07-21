module MoneyS3
  module Parsers
    class TelefonType
      include ParserCore::BaseParser

      def pred
        at 'Pred'
      end

      def pred_attributes
        attributes_at 'Pred'
      end

      def cislo
        at 'Cislo'
      end

      def cislo_attributes
        attributes_at 'Cislo'
      end

      def klap
        at 'Klap'
      end

      def klap_attributes
        attributes_at 'Klap'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:pred] = pred if has? 'Pred'
        hash[:pred_attributes] = pred_attributes if has? 'Pred'
        hash[:cislo] = cislo if has? 'Cislo'
        hash[:cislo_attributes] = cislo_attributes if has? 'Cislo'
        hash[:klap] = klap if has? 'Klap'
        hash[:klap_attributes] = klap_attributes if has? 'Klap'

        hash
      end
    end
  end
end