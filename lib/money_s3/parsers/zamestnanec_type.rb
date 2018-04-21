module MoneyS3
  module Parsers
    class ZamestnanecType
      include BaseParser

      def os_cislo
        at 'OsCislo'
      end

      def jmeno
        at 'Jmeno'
      end

      def stredisko
        at 'Stredisko'
      end

      def dat_nastup
        at 'DatNastup'
      end

      def dat_odchod
        at 'DatOdchod'
      end

      def seznam_mzdovych_obdobi
        array_of_at(MzdoveObdobiType, ['SeznamMzdovychObdobi', 'MzdoveObdobi'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:os_cislo] = os_cislo if has? 'OsCislo'
        hash[:jmeno] = jmeno if has? 'Jmeno'
        hash[:stredisko] = stredisko if has? 'Stredisko'
        hash[:dat_nastup] = dat_nastup if has? 'DatNastup'
        hash[:dat_odchod] = dat_odchod if has? 'DatOdchod'
        hash[:seznam_mzdovych_obdobi] = seznam_mzdovych_obdobi.map(&:to_h_with_attrs) if has? 'SeznamMzdovychObdobi'

        hash
      end
    end
  end
end