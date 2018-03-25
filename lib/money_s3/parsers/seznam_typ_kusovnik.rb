require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/kusovnik_type'

module MoneyS3
  module Parsers
    class SeznamTypKusovnik
      include BaseParser

      def typ_kusovnik
        array_of_at(KusovnikType, [:TypKusovnik])
      end

      def to_h
        hash = {}

        hash[:typ_kusovnik] = typ_kusovnik.map(&:to_h) if has? :TypKusovnik

        hash
      end
    end
  end
end