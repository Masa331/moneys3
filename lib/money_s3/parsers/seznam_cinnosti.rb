require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/cinnost'

module MoneyS3
  module Parsers
    class SeznamCinnosti
      include BaseParser

      def cinnost
        array_of_at(Cinnost, ['Cinnost'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:cinnost] = cinnost.map(&:to_h_with_attrs) if has? 'Cinnost'

        hash
      end
    end
  end
end