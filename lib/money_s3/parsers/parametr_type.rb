require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class ParametrType
      include BaseParser

      def id
        at 'ID'
      end

      def nazev
        at 'Nazev'
      end

      def druh
        at 'Druh'
      end

      def typ
        at 'Typ'
      end

      def mj
        at 'MJ'
      end

      def uziv_code
        at 'UzivCode'
      end

      def hodnoty
        at 'Hodnoty'
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:id] = id if has? 'ID'
        hash[:nazev] = nazev if has? 'Nazev'
        hash[:druh] = druh if has? 'Druh'
        hash[:typ] = typ if has? 'Typ'
        hash[:mj] = mj if has? 'MJ'
        hash[:uziv_code] = uziv_code if has? 'UzivCode'
        hash[:hodnoty] = hodnoty if has? 'Hodnoty'

        hash
      end
    end
  end
end