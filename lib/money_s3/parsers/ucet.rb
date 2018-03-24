require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class Ucet
      include BaseParser

      def zkrat
        at :Zkrat
      end

      def ucet
        at :Ucet
      end

      def b_kod
        at :BKod
      end

      def b_nazev
        at :BNazev
      end

      def to_h
        hash = {}

        hash[:zkrat] = zkrat if raw.key? :Zkrat
        hash[:ucet] = ucet if raw.key? :Ucet
        hash[:b_kod] = b_kod if raw.key? :BKod
        hash[:b_nazev] = b_nazev if raw.key? :BNazev

        hash
      end
    end
  end
end