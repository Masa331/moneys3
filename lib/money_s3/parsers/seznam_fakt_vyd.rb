require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/fakt_vyd'

module MoneyS3
  module Parsers
    class SeznamFaktVyd
      include BaseParser

      def fakt_vyd
        array_of_at(FaktVyd, ['FaktVyd'])
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:fakt_vyd] = fakt_vyd.map(&:to_h) if has? 'FaktVyd'

        hash
      end
    end
  end
end