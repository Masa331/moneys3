require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class NepritomnostType
      include BaseParser

      def typ
        at 'Typ'
      end

      def zacatek
        at 'Zacatek'
      end

      def konec
        at 'Konec'
      end

      def dat_porodu
        at 'DatPorodu'
      end

      def odp_hod_z
        at 'OdpHodZ'
      end

      def odp_hod_k
        at 'OdpHodK'
      end

      def kal_dnu
        at 'KalDnu'
      end

      def prac_dnu
        at 'PracDnu'
      end

      def hodin
        at 'Hodin'
      end

      def svat_dnu
        at 'SvatDnu'
      end

      def svat_hod
        at 'SvatHod'
      end

      def pokrac_nepr
        at 'PokracNepr'
      end

      def nahr_mzdy
        at 'NahrMzdy'
      end

      def prepoc_dny
        at 'PrepocDny'
      end

      def pozn
        at 'Pozn'
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:typ] = typ if has? 'Typ'
        hash[:zacatek] = zacatek if has? 'Zacatek'
        hash[:konec] = konec if has? 'Konec'
        hash[:dat_porodu] = dat_porodu if has? 'DatPorodu'
        hash[:odp_hod_z] = odp_hod_z if has? 'OdpHodZ'
        hash[:odp_hod_k] = odp_hod_k if has? 'OdpHodK'
        hash[:kal_dnu] = kal_dnu if has? 'KalDnu'
        hash[:prac_dnu] = prac_dnu if has? 'PracDnu'
        hash[:hodin] = hodin if has? 'Hodin'
        hash[:svat_dnu] = svat_dnu if has? 'SvatDnu'
        hash[:svat_hod] = svat_hod if has? 'SvatHod'
        hash[:pokrac_nepr] = pokrac_nepr if has? 'PokracNepr'
        hash[:nahr_mzdy] = nahr_mzdy if has? 'NahrMzdy'
        hash[:prepoc_dny] = prepoc_dny if has? 'PrepocDny'
        hash[:pozn] = pozn if has? 'Pozn'

        hash
      end
    end
  end
end