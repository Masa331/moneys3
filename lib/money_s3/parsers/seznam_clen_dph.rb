require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/clen_dph'

module MoneyS3
  module Parsers
    class SeznamClenDPH
      include BaseParser

      def clen_dph
        array_of_at(ClenDPH, [:ClenDPH])
      end

      def to_h
        hash = {}

        hash[:clen_dph] = clen_dph.map(&:to_h) if has? :ClenDPH

        hash
      end
    end
  end
end