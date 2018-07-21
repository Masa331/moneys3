module MoneyS3
  module Builders
    class ZakazkaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat], data[:zkrat_attributes]) if data.key? :zkrat
        root << build_element('Nazev', data[:nazev], data[:nazev_attributes]) if data.key? :nazev
        root << build_element('ObchPrip', data[:obch_prip], data[:obch_prip_attributes]) if data.key? :obch_prip
        root << build_element('Pozn', data[:pozn], data[:pozn_attributes]) if data.key? :pozn
        root << build_element('DatPlZah', data[:dat_pl_zah], data[:dat_pl_zah_attributes]) if data.key? :dat_pl_zah
        root << build_element('DatZah', data[:dat_zah], data[:dat_zah_attributes]) if data.key? :dat_zah
        root << build_element('DatPlPred', data[:dat_pl_pred], data[:dat_pl_pred_attributes]) if data.key? :dat_pl_pred
        root << build_element('DatPred', data[:dat_pred], data[:dat_pred_attributes]) if data.key? :dat_pred
        root << build_element('ZarukaDo', data[:zaruka_do], data[:zaruka_do_attributes]) if data.key? :zaruka_do
        root << build_element('OdpOs', data[:odp_os], data[:odp_os_attributes]) if data.key? :odp_os
        root << build_element('DruhZak', data[:druh_zak], data[:druh_zak_attributes]) if data.key? :druh_zak
        root << build_element('TypZak', data[:typ_zak], data[:typ_zak_attributes]) if data.key? :typ_zak
        root << build_element('StavZak', data[:stav_zak], data[:stav_zak_attributes]) if data.key? :stav_zak
        root << build_element('Hodnoceni', data[:hodnoceni], data[:hodnoceni_attributes]) if data.key? :hodnoceni
        root << build_element('CObjednavk', data[:c_objednavk], data[:c_objednavk_attributes]) if data.key? :c_objednavk
        root << build_element('Vystavil', data[:vystavil], data[:vystavil_attributes]) if data.key? :vystavil
        if data.key? :dod_odb
          root << FirmaType.new('DodOdb', data[:dod_odb]).builder
        end
        if data.key? :seznam_zakazkovy_kusovnik
          element = Ox::Element.new('SeznamZakazkovyKusovnik')
          data[:seznam_zakazkovy_kusovnik].each { |i| element << KusovnikType.new('ZakazkovyKusovnik', i).builder }
          root << element
        end
        if data.key? :vlajky
          root << Vlajky.new('Vlajky', data[:vlajky]).builder
        end
        if data.key? :dokumenty
          element = Ox::Element.new('Dokumenty')
          data[:dokumenty].map { |i| Ox::Element.new('Dokument') << i }.each { |i| element << i }
          root << element
        end

        root
      end
    end
  end
end