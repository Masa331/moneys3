module MoneyS3
  module Builders
    class HeaderKusovnikType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Cislo', data[:cislo]) if data.key? :cislo
        root << build_element('Druh', data[:druh]) if data.key? :druh
        root << build_element('Typ', data[:typ]) if data.key? :typ
        if data.key? :skupina
          root << SkupinaKusovnikType.new('Skupina', data[:skupina]).builder
        end
        root << build_element('CisKarty', data[:cis_karty]) if data.key? :cis_karty
        root << build_element('Zkratka', data[:zkratka]) if data.key? :zkratka
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('NakladMat', data[:naklad_mat]) if data.key? :naklad_mat
        root << build_element('NakladMzd', data[:naklad_mzd]) if data.key? :naklad_mzd
        root << build_element('NakladKoop', data[:naklad_koop]) if data.key? :naklad_koop
        root << build_element('NakladStr', data[:naklad_str]) if data.key? :naklad_str
        root << build_element('Vyuziti', data[:vyuziti]) if data.key? :vyuziti
        root << build_element('Kalendar', data[:kalendar]) if data.key? :kalendar
        root << build_element('DesMist', data[:des_mist]) if data.key? :des_mist
        root << build_element('VarKus', data[:var_kus]) if data.key? :var_kus
        root << build_element('PriceMask', data[:price_mask]) if data.key? :price_mask
        root << build_element('TimeMask', data[:time_mask]) if data.key? :time_mask
        root << build_element('IDUziv', data[:id_uziv]) if data.key? :id_uziv
        root << build_element('DatumZmeny', data[:datum_zmeny]) if data.key? :datum_zmeny
        root << build_element('CasZmeny', data[:cas_zmeny]) if data.key? :cas_zmeny

        root
      end
    end
  end
end