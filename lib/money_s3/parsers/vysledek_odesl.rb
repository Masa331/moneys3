require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class VysledekOdesl
      include BaseParser

      def chyba
        at 'Chyba'
      end

      def varovani
        array_of_at(String, ['Varovani'])
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:chyba] = chyba if has? 'Chyba'
        hash[:varovani] = varovani if has? 'Varovani'

        hash
      end
    end
  end
end