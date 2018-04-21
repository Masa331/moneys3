module MoneyS3
  module Builders
    class NepritomnostType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Typ', data[:typ]) if data.key? :typ
        root << build_element('Zacatek', data[:zacatek]) if data.key? :zacatek
        root << build_element('Konec', data[:konec]) if data.key? :konec
        root << build_element('DatPorodu', data[:dat_porodu]) if data.key? :dat_porodu
        root << build_element('OdpHodZ', data[:odp_hod_z]) if data.key? :odp_hod_z
        root << build_element('OdpHodK', data[:odp_hod_k]) if data.key? :odp_hod_k
        root << build_element('KalDnu', data[:kal_dnu]) if data.key? :kal_dnu
        root << build_element('PracDnu', data[:prac_dnu]) if data.key? :prac_dnu
        root << build_element('Hodin', data[:hodin]) if data.key? :hodin
        root << build_element('SvatDnu', data[:svat_dnu]) if data.key? :svat_dnu
        root << build_element('SvatHod', data[:svat_hod]) if data.key? :svat_hod
        root << build_element('PokracNepr', data[:pokrac_nepr]) if data.key? :pokrac_nepr
        root << build_element('NahrMzdy', data[:nahr_mzdy]) if data.key? :nahr_mzdy
        root << build_element('PrepocDny', data[:prepoc_dny]) if data.key? :prepoc_dny
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn

        root
      end
    end
  end
end