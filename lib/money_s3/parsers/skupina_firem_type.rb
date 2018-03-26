require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class SkupinaFiremType
      include BaseParser

      def zkratka
        at 'Zkratka'
      end

      def nazev
        at 'Nazev'
      end

      def poznamka
        at 'Poznamka'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:zkratka] = zkratka if has? 'Zkratka'
        hash[:nazev] = nazev if has? 'Nazev'
        hash[:poznamka] = poznamka if has? 'Poznamka'

        hash
      end
    end
  end
end