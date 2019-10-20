module MoneyS3
  module Builders
    class NepritomnostType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Typ', data[:typ], data[:typ_attributes]) if data.key? :typ
        root << build_element('Zacatek', data[:zacatek], data[:zacatek_attributes]) if data.key? :zacatek
        root << build_element('Konec', data[:konec], data[:konec_attributes]) if data.key? :konec
        root << build_element('DatPorodu', data[:dat_porodu], data[:dat_porodu_attributes]) if data.key? :dat_porodu
        root << build_element('OdpHodZ', data[:odp_hod_z], data[:odp_hod_z_attributes]) if data.key? :odp_hod_z
        root << build_element('OdpHodK', data[:odp_hod_k], data[:odp_hod_k_attributes]) if data.key? :odp_hod_k
        root << build_element('KalDnu', data[:kal_dnu], data[:kal_dnu_attributes]) if data.key? :kal_dnu
        root << build_element('PracDnu', data[:prac_dnu], data[:prac_dnu_attributes]) if data.key? :prac_dnu
        root << build_element('Hodin', data[:hodin], data[:hodin_attributes]) if data.key? :hodin
        root << build_element('SvatDnu', data[:svat_dnu], data[:svat_dnu_attributes]) if data.key? :svat_dnu
        root << build_element('SvatHod', data[:svat_hod], data[:svat_hod_attributes]) if data.key? :svat_hod
        root << build_element('PokracNepr', data[:pokrac_nepr], data[:pokrac_nepr_attributes]) if data.key? :pokrac_nepr
        root << build_element('NahrMzdy', data[:nahr_mzdy], data[:nahr_mzdy_attributes]) if data.key? :nahr_mzdy
        root << build_element('PrepocDny', data[:prepoc_dny], data[:prepoc_dny_attributes]) if data.key? :prepoc_dny
        root << build_element('Pozn', data[:pozn], data[:pozn_attributes]) if data.key? :pozn

        root
      end
    end
  end
end