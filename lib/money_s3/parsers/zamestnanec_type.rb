module MoneyS3
  module Parsers
    class ZamestnanecType
      include ParserCore::BaseParser

      def os_cislo
        at 'OsCislo'
      end

      def os_cislo_attributes
        attributes_at 'OsCislo'
      end

      def jmeno
        at 'Jmeno'
      end

      def jmeno_attributes
        attributes_at 'Jmeno'
      end

      def stredisko
        at 'Stredisko'
      end

      def stredisko_attributes
        attributes_at 'Stredisko'
      end

      def dat_nastup
        at 'DatNastup'
      end

      def dat_nastup_attributes
        attributes_at 'DatNastup'
      end

      def dat_odchod
        at 'DatOdchod'
      end

      def dat_odchod_attributes
        attributes_at 'DatOdchod'
      end

      def seznam_mzdovych_obdobi
        array_of_at(MzdoveObdobiType, ['SeznamMzdovychObdobi', 'MzdoveObdobi'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:os_cislo] = os_cislo if has? 'OsCislo'
        hash[:os_cislo_attributes] = os_cislo_attributes if has? 'OsCislo'
        hash[:jmeno] = jmeno if has? 'Jmeno'
        hash[:jmeno_attributes] = jmeno_attributes if has? 'Jmeno'
        hash[:stredisko] = stredisko if has? 'Stredisko'
        hash[:stredisko_attributes] = stredisko_attributes if has? 'Stredisko'
        hash[:dat_nastup] = dat_nastup if has? 'DatNastup'
        hash[:dat_nastup_attributes] = dat_nastup_attributes if has? 'DatNastup'
        hash[:dat_odchod] = dat_odchod if has? 'DatOdchod'
        hash[:dat_odchod_attributes] = dat_odchod_attributes if has? 'DatOdchod'
        hash[:seznam_mzdovych_obdobi] = seznam_mzdovych_obdobi.map(&:to_h) if has? 'SeznamMzdovychObdobi'

        hash
      end
    end
  end
end