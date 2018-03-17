require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class PracPomer
      include BaseParser

      def zkrat
        at :Zkrat
      end

      def popis
        at :Popis
      end

      def eldp_kod
        at :ELDPKod
      end

      def pozn
        at :Pozn
      end

      def to_h
        { zkrat: zkrat,
          popis: popis,
          eldp_kod: eldp_kod,
          pozn: pozn
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end