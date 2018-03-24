require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class NepritomnostType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :typ
          element = Ox::Element.new('Typ')
          element << attributes[:typ] if attributes[:typ]
          root << element
        end

        if attributes.key? :zacatek
          element = Ox::Element.new('Zacatek')
          element << attributes[:zacatek] if attributes[:zacatek]
          root << element
        end

        if attributes.key? :konec
          element = Ox::Element.new('Konec')
          element << attributes[:konec] if attributes[:konec]
          root << element
        end

        if attributes.key? :dat_porodu
          element = Ox::Element.new('DatPorodu')
          element << attributes[:dat_porodu] if attributes[:dat_porodu]
          root << element
        end

        if attributes.key? :odp_hod_z
          element = Ox::Element.new('OdpHodZ')
          element << attributes[:odp_hod_z] if attributes[:odp_hod_z]
          root << element
        end

        if attributes.key? :odp_hod_k
          element = Ox::Element.new('OdpHodK')
          element << attributes[:odp_hod_k] if attributes[:odp_hod_k]
          root << element
        end

        if attributes.key? :kal_dnu
          element = Ox::Element.new('KalDnu')
          element << attributes[:kal_dnu] if attributes[:kal_dnu]
          root << element
        end

        if attributes.key? :prac_dnu
          element = Ox::Element.new('PracDnu')
          element << attributes[:prac_dnu] if attributes[:prac_dnu]
          root << element
        end

        if attributes.key? :hodin
          element = Ox::Element.new('Hodin')
          element << attributes[:hodin] if attributes[:hodin]
          root << element
        end

        if attributes.key? :svat_dnu
          element = Ox::Element.new('SvatDnu')
          element << attributes[:svat_dnu] if attributes[:svat_dnu]
          root << element
        end

        if attributes.key? :svat_hod
          element = Ox::Element.new('SvatHod')
          element << attributes[:svat_hod] if attributes[:svat_hod]
          root << element
        end

        if attributes.key? :pokrac_nepr
          element = Ox::Element.new('PokracNepr')
          element << attributes[:pokrac_nepr] if attributes[:pokrac_nepr]
          root << element
        end

        if attributes.key? :nahr_mzdy
          element = Ox::Element.new('NahrMzdy')
          element << attributes[:nahr_mzdy] if attributes[:nahr_mzdy]
          root << element
        end

        if attributes.key? :prepoc_dny
          element = Ox::Element.new('PrepocDny')
          element << attributes[:prepoc_dny] if attributes[:prepoc_dny]
          root << element
        end

        if attributes.key? :pozn
          element = Ox::Element.new('Pozn')
          element << attributes[:pozn] if attributes[:pozn]
          root << element
        end

        root
      end
    end
  end
end