require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/nab_vyd'

module MoneyS3
  module Parsers
    class SeznamNabVyd
      include BaseParser

      def nab_vyd
        array_of_at(NabVyd, [:NabVyd])
      end

      def to_h
        hash = {}

        hash[:nab_vyd] = nab_vyd.map(&:to_h) if raw.key? :NabVyd

        hash
      end
    end
  end
end