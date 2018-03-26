require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/prijemka'

module MoneyS3
  module Parsers
    class SeznamPrijemka
      include BaseParser

      def prijemka
        array_of_at(Prijemka, ['Prijemka'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:prijemka] = prijemka.map(&:to_h_with_attrs) if has? 'Prijemka'

        hash
      end
    end
  end
end