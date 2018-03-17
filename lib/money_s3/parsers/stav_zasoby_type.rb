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
        { zasoba: zasoba,
          rezervace: rezervace,
          objednano: objednano
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end