require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class PreprDoplnUdajType
      include BaseParser

      def zkrat
        at :Zkrat
      end

      def popis
        at :Popis
      end

      def poznamka
        at :Poznamka
      end

      def to_h
        hash = {}

        hash[:zkrat] = zkrat if raw.key? :Zkrat
        hash[:popis] = popis if raw.key? :Popis
        hash[:poznamka] = poznamka if raw.key? :Poznamka

        hash
      end
    end
  end
end