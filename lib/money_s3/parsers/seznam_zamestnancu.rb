require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/zamestnanec_type'

module MoneyS3
  module Parsers
    class SeznamZamestnancu
      include BaseParser

      def zamestnanec
        array_of_at(ZamestnanecType, ['Zamestnanec'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:zamestnanec] = zamestnanec.map(&:to_h_with_attrs) if has? 'Zamestnanec'

        hash
      end
    end
  end
end