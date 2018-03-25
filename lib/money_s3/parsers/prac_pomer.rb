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
        hash = {}

        hash[:zkrat] = zkrat if has? :Zkrat
        hash[:popis] = popis if has? :Popis
        hash[:eldp_kod] = eldp_kod if has? :ELDPKod
        hash[:pozn] = pozn if has? :Pozn

        hash
      end
    end
  end
end