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
        { zkrat: zkrat,
          typ: typ,
          popis: popis,
          poh_dss: poh_dss,
          poh_dzs: poh_dzs,
          pozn: pozn,
          seznam_obdobi_dph: seznam_obdobi_dph.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end