require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/uc_osnova_type'

module MoneyS3
  module Parsers
    class SeznamUcOsnov
      include BaseParser

      def uc_osnova
        array_of_at(UcOsnovaType, [:UcOsnova])
      end

      def to_h
        hash = {}

        hash[:uc_osnova] = uc_osnova.map(&:to_h) if raw.key? :UcOsnova

        hash
      end
    end
  end
end