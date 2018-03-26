require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/mzda_type'

module MoneyS3
  module Parsers
    class SeznamMezd
      include BaseParser

      def mzda
        array_of_at(MzdaType, ['Mzda'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:mzda] = mzda.map(&:to_h_with_attrs) if has? 'Mzda'

        hash
      end
    end
  end
end