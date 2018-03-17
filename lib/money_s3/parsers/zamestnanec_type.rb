require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/mzdove_obdobi_type'

module MoneyS3
  module Parsers
    class ZamestnanecType
      include BaseParser

      def os_cislo
        at :OsCislo
      end

      def jmeno
        at :Jmeno
      end

      def stredisko
        at :Stredisko
      end

      def dat_nastup
        at :DatNastup
      end

      def dat_odchod
        at :DatOdchod
      end

      def seznam_mzdovych_obdobi
        array_of_at(MzdoveObdobiType, [:SeznamMzdovychObdobi, :MzdoveObdobi])
      end

      def to_h
        { os_cislo: os_cislo,
          jmeno: jmeno,
          stredisko: stredisko,
          dat_nastup: dat_nastup,
          dat_odchod: dat_odchod,
          seznam_mzdovych_obdobi: seznam_mzdovych_obdobi.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end