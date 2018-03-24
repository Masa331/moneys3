require 'money_s3/builders/base_builder'
require 'money_s3/builders/skupina_kusovnik_type'

module MoneyS3
  module Builders
    class HeaderKusovnikType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :cislo
          element = Ox::Element.new('Cislo')
          element << attributes[:cislo] if attributes[:cislo]
          root << element
        end

        if attributes.key? :druh
          element = Ox::Element.new('Druh')
          element << attributes[:druh] if attributes[:druh]
          root << element
        end

        if attributes.key? :typ
          element = Ox::Element.new('Typ')
          element << attributes[:typ] if attributes[:typ]
          root << element
        end

        if attributes.key? :cis_karty
          element = Ox::Element.new('CisKarty')
          element << attributes[:cis_karty] if attributes[:cis_karty]
          root << element
        end

        if attributes.key? :zkratka
          element = Ox::Element.new('Zkratka')
          element << attributes[:zkratka] if attributes[:zkratka]
          root << element
        end

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :naklad_mat
          element = Ox::Element.new('NakladMat')
          element << attributes[:naklad_mat] if attributes[:naklad_mat]
          root << element
        end

        if attributes.key? :naklad_mzd
          element = Ox::Element.new('NakladMzd')
          element << attributes[:naklad_mzd] if attributes[:naklad_mzd]
          root << element
        end

        if attributes.key? :naklad_koop
          element = Ox::Element.new('NakladKoop')
          element << attributes[:naklad_koop] if attributes[:naklad_koop]
          root << element
        end

        if attributes.key? :naklad_str
          element = Ox::Element.new('NakladStr')
          element << attributes[:naklad_str] if attributes[:naklad_str]
          root << element
        end

        if attributes.key? :vyuziti
          element = Ox::Element.new('Vyuziti')
          element << attributes[:vyuziti] if attributes[:vyuziti]
          root << element
        end

        if attributes.key? :kalendar
          element = Ox::Element.new('Kalendar')
          element << attributes[:kalendar] if attributes[:kalendar]
          root << element
        end

        if attributes.key? :des_mist
          element = Ox::Element.new('DesMist')
          element << attributes[:des_mist] if attributes[:des_mist]
          root << element
        end

        if attributes.key? :var_kus
          element = Ox::Element.new('VarKus')
          element << attributes[:var_kus] if attributes[:var_kus]
          root << element
        end

        if attributes.key? :price_mask
          element = Ox::Element.new('PriceMask')
          element << attributes[:price_mask] if attributes[:price_mask]
          root << element
        end

        if attributes.key? :time_mask
          element = Ox::Element.new('TimeMask')
          element << attributes[:time_mask] if attributes[:time_mask]
          root << element
        end

        if attributes.key? :id_uziv
          element = Ox::Element.new('IDUziv')
          element << attributes[:id_uziv] if attributes[:id_uziv]
          root << element
        end

        if attributes.key? :datum_zmeny
          element = Ox::Element.new('DatumZmeny')
          element << attributes[:datum_zmeny] if attributes[:datum_zmeny]
          root << element
        end

        if attributes.key? :cas_zmeny
          element = Ox::Element.new('CasZmeny')
          element << attributes[:cas_zmeny] if attributes[:cas_zmeny]
          root << element
        end

        if attributes.key? :skupina
          root << SkupinaKusovnikType.new(attributes[:skupina], 'Skupina').builder
        end

        root
      end
    end
  end
end