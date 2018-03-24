require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class NepritomnostType
      include BaseParser

      def typ
        at :Typ
      end

      def zacatek
        at :Zacatek
      end

      def konec
        at :Konec
      end

      def dat_porodu
        at :DatPorodu
      end

      def odp_hod_z
        at :OdpHodZ
      end

      def odp_hod_k
        at :OdpHodK
      end

      def kal_dnu
        at :KalDnu
      end

      def prac_dnu
        at :PracDnu
      end

      def hodin
        at :Hodin
      end

      def svat_dnu
        at :SvatDnu
      end

      def svat_hod
        at :SvatHod
      end

      def pokrac_nepr
        at :PokracNepr
      end

      def nahr_mzdy
        at :NahrMzdy
      end

      def prepoc_dny
        at :PrepocDny
      end

      def pozn
        at :Pozn
      end

      def to_h
        hash = {}

        hash[:typ] = typ if raw.key? :Typ
        hash[:zacatek] = zacatek if raw.key? :Zacatek
        hash[:konec] = konec if raw.key? :Konec
        hash[:dat_porodu] = dat_porodu if raw.key? :DatPorodu
        hash[:odp_hod_z] = odp_hod_z if raw.key? :OdpHodZ
        hash[:odp_hod_k] = odp_hod_k if raw.key? :OdpHodK
        hash[:kal_dnu] = kal_dnu if raw.key? :KalDnu
        hash[:prac_dnu] = prac_dnu if raw.key? :PracDnu
        hash[:hodin] = hodin if raw.key? :Hodin
        hash[:svat_dnu] = svat_dnu if raw.key? :SvatDnu
        hash[:svat_hod] = svat_hod if raw.key? :SvatHod
        hash[:pokrac_nepr] = pokrac_nepr if raw.key? :PokracNepr
        hash[:nahr_mzdy] = nahr_mzdy if raw.key? :NahrMzdy
        hash[:prepoc_dny] = prepoc_dny if raw.key? :PrepocDny
        hash[:pozn] = pozn if raw.key? :Pozn

        hash
      end
    end
  end
end