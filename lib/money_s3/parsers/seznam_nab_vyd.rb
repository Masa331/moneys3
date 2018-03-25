require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/nab_vyd'

module MoneyS3
  module Parsers
    class SeznamNabVyd
      include BaseParser

      def nab_vyd
        array_of_at(NabVyd, ['NabVyd'])
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:nab_vyd] = nab_vyd.map(&:to_h) if has? 'NabVyd'

        hash
      end
    end
  end
end