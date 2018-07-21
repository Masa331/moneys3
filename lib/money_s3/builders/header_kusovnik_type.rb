module MoneyS3
  module Builders
    class HeaderKusovnikType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Cislo', data[:cislo], data[:cislo_attributes]) if data.key? :cislo
        root << build_element('Druh', data[:druh], data[:druh_attributes]) if data.key? :druh
        root << build_element('Typ', data[:typ], data[:typ_attributes]) if data.key? :typ
        if data.key? :skupina
          root << SkupinaKusovnikType.new('Skupina', data[:skupina]).builder
        end
        root << build_element('CisKarty', data[:cis_karty], data[:cis_karty_attributes]) if data.key? :cis_karty
        root << build_element('Zkratka', data[:zkratka], data[:zkratka_attributes]) if data.key? :zkratka
        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('NakladMat', data[:naklad_mat], data[:naklad_mat_attributes]) if data.key? :naklad_mat
        root << build_element('NakladMzd', data[:naklad_mzd], data[:naklad_mzd_attributes]) if data.key? :naklad_mzd
        root << build_element('NakladKoop', data[:naklad_koop], data[:naklad_koop_attributes]) if data.key? :naklad_koop
        root << build_element('NakladStr', data[:naklad_str], data[:naklad_str_attributes]) if data.key? :naklad_str
        root << build_element('Vyuziti', data[:vyuziti], data[:vyuziti_attributes]) if data.key? :vyuziti
        root << build_element('Kalendar', data[:kalendar], data[:kalendar_attributes]) if data.key? :kalendar
        root << build_element('DesMist', data[:des_mist], data[:des_mist_attributes]) if data.key? :des_mist
        root << build_element('VarKus', data[:var_kus], data[:var_kus_attributes]) if data.key? :var_kus
        root << build_element('PriceMask', data[:price_mask], data[:price_mask_attributes]) if data.key? :price_mask
        root << build_element('TimeMask', data[:time_mask], data[:time_mask_attributes]) if data.key? :time_mask
        root << build_element('IDUziv', data[:id_uziv], data[:id_uziv_attributes]) if data.key? :id_uziv
        root << build_element('DatumZmeny', data[:datum_zmeny], data[:datum_zmeny_attributes]) if data.key? :datum_zmeny
        root << build_element('CasZmeny', data[:cas_zmeny], data[:cas_zmeny_attributes]) if data.key? :cas_zmeny

        root
      end
    end
  end
end