module MoneyS3
  module Parsers
    class Valuty
      include ParserCore::BaseParser

      def zaklad_mj
        at 'Zaklad_MJ'
      end

      def dph_mj
        at 'DPH_MJ'
      end

      def zaklad
        at 'Zaklad'
      end

      def dph
        at 'DPH'
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:zaklad_mj] = zaklad_mj if has? 'Zaklad_MJ'
        hash[:dph_mj] = dph_mj if has? 'DPH_MJ'
        hash[:zaklad] = zaklad if has? 'Zaklad'
        hash[:dph] = dph if has? 'DPH'

        hash
      end
    end
  end
end