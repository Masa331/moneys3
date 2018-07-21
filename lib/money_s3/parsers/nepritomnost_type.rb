module MoneyS3
  module Parsers
    class NepritomnostType
      include ParserCore::BaseParser

      def typ
        at 'Typ'
      end

      def typ_attributes
        attributes_at 'Typ'
      end

      def zacatek
        at 'Zacatek'
      end

      def zacatek_attributes
        attributes_at 'Zacatek'
      end

      def konec
        at 'Konec'
      end

      def konec_attributes
        attributes_at 'Konec'
      end

      def dat_porodu
        at 'DatPorodu'
      end

      def dat_porodu_attributes
        attributes_at 'DatPorodu'
      end

      def odp_hod_z
        at 'OdpHodZ'
      end

      def odp_hod_z_attributes
        attributes_at 'OdpHodZ'
      end

      def odp_hod_k
        at 'OdpHodK'
      end

      def odp_hod_k_attributes
        attributes_at 'OdpHodK'
      end

      def kal_dnu
        at 'KalDnu'
      end

      def kal_dnu_attributes
        attributes_at 'KalDnu'
      end

      def prac_dnu
        at 'PracDnu'
      end

      def prac_dnu_attributes
        attributes_at 'PracDnu'
      end

      def hodin
        at 'Hodin'
      end

      def hodin_attributes
        attributes_at 'Hodin'
      end

      def svat_dnu
        at 'SvatDnu'
      end

      def svat_dnu_attributes
        attributes_at 'SvatDnu'
      end

      def svat_hod
        at 'SvatHod'
      end

      def svat_hod_attributes
        attributes_at 'SvatHod'
      end

      def pokrac_nepr
        at 'PokracNepr'
      end

      def pokrac_nepr_attributes
        attributes_at 'PokracNepr'
      end

      def nahr_mzdy
        at 'NahrMzdy'
      end

      def nahr_mzdy_attributes
        attributes_at 'NahrMzdy'
      end

      def prepoc_dny
        at 'PrepocDny'
      end

      def prepoc_dny_attributes
        attributes_at 'PrepocDny'
      end

      def pozn
        at 'Pozn'
      end

      def pozn_attributes
        attributes_at 'Pozn'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:typ] = typ if has? 'Typ'
        hash[:typ_attributes] = typ_attributes if has? 'Typ'
        hash[:zacatek] = zacatek if has? 'Zacatek'
        hash[:zacatek_attributes] = zacatek_attributes if has? 'Zacatek'
        hash[:konec] = konec if has? 'Konec'
        hash[:konec_attributes] = konec_attributes if has? 'Konec'
        hash[:dat_porodu] = dat_porodu if has? 'DatPorodu'
        hash[:dat_porodu_attributes] = dat_porodu_attributes if has? 'DatPorodu'
        hash[:odp_hod_z] = odp_hod_z if has? 'OdpHodZ'
        hash[:odp_hod_z_attributes] = odp_hod_z_attributes if has? 'OdpHodZ'
        hash[:odp_hod_k] = odp_hod_k if has? 'OdpHodK'
        hash[:odp_hod_k_attributes] = odp_hod_k_attributes if has? 'OdpHodK'
        hash[:kal_dnu] = kal_dnu if has? 'KalDnu'
        hash[:kal_dnu_attributes] = kal_dnu_attributes if has? 'KalDnu'
        hash[:prac_dnu] = prac_dnu if has? 'PracDnu'
        hash[:prac_dnu_attributes] = prac_dnu_attributes if has? 'PracDnu'
        hash[:hodin] = hodin if has? 'Hodin'
        hash[:hodin_attributes] = hodin_attributes if has? 'Hodin'
        hash[:svat_dnu] = svat_dnu if has? 'SvatDnu'
        hash[:svat_dnu_attributes] = svat_dnu_attributes if has? 'SvatDnu'
        hash[:svat_hod] = svat_hod if has? 'SvatHod'
        hash[:svat_hod_attributes] = svat_hod_attributes if has? 'SvatHod'
        hash[:pokrac_nepr] = pokrac_nepr if has? 'PokracNepr'
        hash[:pokrac_nepr_attributes] = pokrac_nepr_attributes if has? 'PokracNepr'
        hash[:nahr_mzdy] = nahr_mzdy if has? 'NahrMzdy'
        hash[:nahr_mzdy_attributes] = nahr_mzdy_attributes if has? 'NahrMzdy'
        hash[:prepoc_dny] = prepoc_dny if has? 'PrepocDny'
        hash[:prepoc_dny_attributes] = prepoc_dny_attributes if has? 'PrepocDny'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'

        hash
      end
    end
  end
end