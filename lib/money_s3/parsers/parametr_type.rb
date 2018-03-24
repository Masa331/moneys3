require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class ParametrType
      include BaseParser

      def id
        at :ID
      end

      def nazev
        at :Nazev
      end

      def druh
        at :Druh
      end

      def typ
        at :Typ
      end

      def mj
        at :MJ
      end

      def uziv_code
        at :UzivCode
      end

      def hodnoty
        at :Hodnoty
      end

      def to_h
        hash = {}

        hash[:id] = id if raw.key? :ID
        hash[:nazev] = nazev if raw.key? :Nazev
        hash[:druh] = druh if raw.key? :Druh
        hash[:typ] = typ if raw.key? :Typ
        hash[:mj] = mj if raw.key? :MJ
        hash[:uziv_code] = uziv_code if raw.key? :UzivCode
        hash[:hodnoty] = hodnoty if raw.key? :Hodnoty

        hash
      end
    end
  end
end