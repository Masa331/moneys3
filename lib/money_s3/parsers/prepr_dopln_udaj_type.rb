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

        hash[:zkrat] = zkrat if has? :Zkrat
        hash[:popis] = popis if has? :Popis
        hash[:poznamka] = poznamka if has? :Poznamka

        hash
      end
    end
  end
end