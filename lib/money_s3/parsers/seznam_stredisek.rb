require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/stredisko'

module MoneyS3
  module Parsers
    class SeznamStredisek
      include BaseParser

      def stredisko
        array_of_at(Stredisko, [:Stredisko])
      end

      def to_h
        hash = {}

        hash[:stredisko] = stredisko.map(&:to_h) if raw.key? :Stredisko

        hash
      end
    end
  end
end