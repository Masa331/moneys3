require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/mzda_type'

module MoneyS3
  module Parsers
    class SeznamMezd
      include BaseParser

      def mzda
        array_of_at(MzdaType, ['Mzda'])
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:mzda] = mzda.map(&:to_h) if has? 'Mzda'

        hash
      end
    end
  end
end