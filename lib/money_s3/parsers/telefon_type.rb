require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class TelefonType
      include BaseParser

      def pred
        at 'Pred'
      end

      def cislo
        at 'Cislo'
      end

      def klap
        at 'Klap'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:pred] = pred if has? 'Pred'
        hash[:cislo] = cislo if has? 'Cislo'
        hash[:klap] = klap if has? 'Klap'

        hash
      end
    end
  end
end