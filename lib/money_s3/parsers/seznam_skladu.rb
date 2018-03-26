require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/sklad'

module MoneyS3
  module Parsers
    class SeznamSkladu
      include BaseParser

      def sklad
        array_of_at(Sklad, ['Sklad'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:sklad] = sklad.map(&:to_h_with_attrs) if has? 'Sklad'

        hash
      end
    end
  end
end