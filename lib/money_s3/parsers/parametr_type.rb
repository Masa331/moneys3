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
        { id: id,
          nazev: nazev,
          druh: druh,
          typ: typ,
          mj: mj,
          uziv_code: uziv_code,
          hodnoty: hodnoty
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end