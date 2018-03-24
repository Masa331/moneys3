require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/obdobi_dph'

module MoneyS3
  module Parsers
    class ZauctovaniDPHDetype
      include BaseParser

      def zkrat
        at :Zkrat
      end

      def typ
        at :Typ
      end

      def popis
        at :Popis
      end

      def poh_dss
        at :PohDSS
      end

      def poh_dzs
        at :PohDZS
      end

      def pozn
        at :Pozn
      end

      def seznam_obdobi_dph
        array_of_at(ObdobiDPH, [:SeznamObdobiDPH, :ObdobiDPH])
      end

      def to_h
        hash = {}

        hash[:zkrat] = zkrat if raw.key? :Zkrat
        hash[:typ] = typ if raw.key? :Typ
        hash[:popis] = popis if raw.key? :Popis
        hash[:poh_dss] = poh_dss if raw.key? :PohDSS
        hash[:poh_dzs] = poh_dzs if raw.key? :PohDZS
        hash[:pozn] = pozn if raw.key? :Pozn
        hash[:seznam_obdobi_dph] = seznam_obdobi_dph.map(&:to_h) if raw.key? :SeznamObdobiDPH

        hash
      end
    end
  end
end