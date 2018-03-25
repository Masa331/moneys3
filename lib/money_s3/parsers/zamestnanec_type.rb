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
        hash = {}

        hash[:os_cislo] = os_cislo if has? :OsCislo
        hash[:jmeno] = jmeno if has? :Jmeno
        hash[:stredisko] = stredisko if has? :Stredisko
        hash[:dat_nastup] = dat_nastup if has? :DatNastup
        hash[:dat_odchod] = dat_odchod if has? :DatOdchod
        hash[:seznam_mzdovych_obdobi] = seznam_mzdovych_obdobi.map(&:to_h) if has? :SeznamMzdovychObdobi

        hash
      end
    end
  end
end