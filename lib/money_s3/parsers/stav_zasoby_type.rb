require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class StavZasobyType
      include BaseParser

      def zasoba
        at :Zasoba
      end

      def rezervace
        at :Rezervace
      end

      def objednano
        at :Objednano
      end

      def to_h
        hash = {}

        hash[:zasoba] = zasoba if raw.key? :Zasoba
        hash[:rezervace] = rezervace if raw.key? :Rezervace
        hash[:objednano] = objednano if raw.key? :Objednano

        hash
      end
    end
  end
end