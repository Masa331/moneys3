require 'money_s3/builders/base_builder'
require 'money_s3/builders/firma_type'
require 'money_s3/builders/vlajky'
require 'money_s3/builders/kusovnik_type'

module MoneyS3
  module Builders
    class Zakazka
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zkrat
          element = Ox::Element.new('Zkrat')
          element << attributes[:zkrat] if attributes[:zkrat]
          root << element
        end

        if attributes.key? :nazev
          element = Ox::Element.new('Nazev')
          element << attributes[:nazev] if attributes[:nazev]
          root << element
        end

        if attributes.key? :obch_prip
          element = Ox::Element.new('ObchPrip')
          element << attributes[:obch_prip] if attributes[:obch_prip]
          root << element
        end

        if attributes.key? :pozn
          element = Ox::Element.new('Pozn')
          element << attributes[:pozn] if attributes[:pozn]
          root << element
        end

        if attributes.key? :dat_pl_zah
          element = Ox::Element.new('DatPlZah')
          element << attributes[:dat_pl_zah] if attributes[:dat_pl_zah]
          root << element
        end

        if attributes.key? :dat_zah
          element = Ox::Element.new('DatZah')
          element << attributes[:dat_zah] if attributes[:dat_zah]
          root << element
        end

        if attributes.key? :dat_pl_pred
          element = Ox::Element.new('DatPlPred')
          element << attributes[:dat_pl_pred] if attributes[:dat_pl_pred]
          root << element
        end

        if attributes.key? :dat_pred
          element = Ox::Element.new('DatPred')
          element << attributes[:dat_pred] if attributes[:dat_pred]
          root << element
        end

        if attributes.key? :zaruka_do
          element = Ox::Element.new('ZarukaDo')
          element << attributes[:zaruka_do] if attributes[:zaruka_do]
          root << element
        end

        if attributes.key? :odp_os
          element = Ox::Element.new('OdpOs')
          element << attributes[:odp_os] if attributes[:odp_os]
          root << element
        end

        if attributes.key? :druh_zak
          element = Ox::Element.new('DruhZak')
          element << attributes[:druh_zak] if attributes[:druh_zak]
          root << element
        end

        if attributes.key? :typ_zak
          element = Ox::Element.new('TypZak')
          element << attributes[:typ_zak] if attributes[:typ_zak]
          root << element
        end

        if attributes.key? :stav_zak
          element = Ox::Element.new('StavZak')
          element << attributes[:stav_zak] if attributes[:stav_zak]
          root << element
        end

        if attributes.key? :hodnoceni
          element = Ox::Element.new('Hodnoceni')
          element << attributes[:hodnoceni] if attributes[:hodnoceni]
          root << element
        end

        if attributes.key? :c_objednavk
          element = Ox::Element.new('CObjednavk')
          element << attributes[:c_objednavk] if attributes[:c_objednavk]
          root << element
        end

        if attributes.key? :vystavil
          element = Ox::Element.new('Vystavil')
          element << attributes[:vystavil] if attributes[:vystavil]
          root << element
        end

        if attributes.key? :dod_odb
          root << FirmaType.new(attributes[:dod_odb], 'DodOdb').builder
        end

        if attributes.key? :vlajky
          root << Vlajky.new(attributes[:vlajky], 'Vlajky').builder
        end

        if attributes.key? :seznam_zakazkovy_kusovnik
          element = Ox::Element.new('SeznamZakazkovyKusovnik')
          attributes[:seznam_zakazkovy_kusovnik].each { |i| element << KusovnikType.new(i, 'ZakazkovyKusovnik').builder }
          root << element
        end

        if attributes.key? :dokumenty
          element = Ox::Element.new('Dokumenty')
          attributes[:dokumenty].map { |i| Ox::Element.new('Dokument') << i }.each { |i| element << i }
          root << element
        end

        root
      end
    end
  end
end