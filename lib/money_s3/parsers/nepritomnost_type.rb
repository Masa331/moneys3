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
        { typ: typ,
          zacatek: zacatek,
          konec: konec,
          dat_porodu: dat_porodu,
          odp_hod_z: odp_hod_z,
          odp_hod_k: odp_hod_k,
          kal_dnu: kal_dnu,
          prac_dnu: prac_dnu,
          hodin: hodin,
          svat_dnu: svat_dnu,
          svat_hod: svat_hod,
          pokrac_nepr: pokrac_nepr,
          nahr_mzdy: nahr_mzdy,
          prepoc_dny: prepoc_dny,
          pozn: pozn
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end