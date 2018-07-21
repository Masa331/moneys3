module MoneyS3
  module Parsers
    class ParametrType
      include ParserCore::BaseParser

      def id
        at 'ID'
      end

      def id_attributes
        attributes_at 'ID'
      end

      def nazev
        at 'Nazev'
      end

      def nazev_attributes
        attributes_at 'Nazev'
      end

      def druh
        at 'Druh'
      end

      def druh_attributes
        attributes_at 'Druh'
      end

      def typ
        at 'Typ'
      end

      def typ_attributes
        attributes_at 'Typ'
      end

      def mj
        at 'MJ'
      end

      def mj_attributes
        attributes_at 'MJ'
      end

      def uziv_code
        at 'UzivCode'
      end

      def uziv_code_attributes
        attributes_at 'UzivCode'
      end

      def hodnoty
        at 'Hodnoty'
      end

      def hodnoty_attributes
        attributes_at 'Hodnoty'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:id] = id if has? 'ID'
        hash[:id_attributes] = id_attributes if has? 'ID'
        hash[:nazev] = nazev if has? 'Nazev'
        hash[:nazev_attributes] = nazev_attributes if has? 'Nazev'
        hash[:druh] = druh if has? 'Druh'
        hash[:druh_attributes] = druh_attributes if has? 'Druh'
        hash[:typ] = typ if has? 'Typ'
        hash[:typ_attributes] = typ_attributes if has? 'Typ'
        hash[:mj] = mj if has? 'MJ'
        hash[:mj_attributes] = mj_attributes if has? 'MJ'
        hash[:uziv_code] = uziv_code if has? 'UzivCode'
        hash[:uziv_code_attributes] = uziv_code_attributes if has? 'UzivCode'
        hash[:hodnoty] = hodnoty if has? 'Hodnoty'
        hash[:hodnoty_attributes] = hodnoty_attributes if has? 'Hodnoty'

        hash
      end
    end
  end
end