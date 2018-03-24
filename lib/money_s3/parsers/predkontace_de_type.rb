require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class PredkontaceDEType
      include BaseParser

      def zkrat
        at :Zkrat
      end

      def popis
        at :Popis
      end

      def typ
        at :Typ
      end

      def poh_zak
        at :PohZak
      end

      def zauct_dph
        at :ZauctDPH
      end

      def cleneni
        at :Cleneni
      end

      def pozn
        at :Pozn
      end

      def to_h
        hash = {}

        hash[:zkrat] = zkrat if raw.key? :Zkrat
        hash[:popis] = popis if raw.key? :Popis
        hash[:typ] = typ if raw.key? :Typ
        hash[:poh_zak] = poh_zak if raw.key? :PohZak
        hash[:zauct_dph] = zauct_dph if raw.key? :ZauctDPH
        hash[:cleneni] = cleneni if raw.key? :Cleneni
        hash[:pozn] = pozn if raw.key? :Pozn

        hash
      end
    end
  end
end