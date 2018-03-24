require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class TelefonType
      include BaseParser

      def pred
        at :Pred
      end

      def cislo
        at :Cislo
      end

      def klap
        at :Klap
      end

      def to_h
        hash = {}

        hash[:pred] = pred if raw.key? :Pred
        hash[:cislo] = cislo if raw.key? :Cislo
        hash[:klap] = klap if raw.key? :Klap

        hash
      end
    end
  end
end