require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/stredisko'

module MoneyS3
  module Parsers
    class SeznamStredisek
      include BaseParser

      def stredisko
        array_of_at(Stredisko, ['Stredisko'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:stredisko] = stredisko.map(&:to_h_with_attrs) if has? 'Stredisko'

        hash
      end
    end
  end
end