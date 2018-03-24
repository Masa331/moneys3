require 'money_s3/builders/base_builder'
require 'money_s3/builders/firma_type'
require 'money_s3/builders/vlajky'
require 'money_s3/builders/kusovnik_type'

module MoneyS3
  module Builders
    class Zakazka
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('Nazev', data[:nazev]) if data.key? :nazev
        root << build_element('ObchPrip', data[:obch_prip]) if data.key? :obch_prip
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn
        root << build_element('DatPlZah', data[:dat_pl_zah]) if data.key? :dat_pl_zah
        root << build_element('DatZah', data[:dat_zah]) if data.key? :dat_zah
        root << build_element('DatPlPred', data[:dat_pl_pred]) if data.key? :dat_pl_pred
        root << build_element('DatPred', data[:dat_pred]) if data.key? :dat_pred
        root << build_element('ZarukaDo', data[:zaruka_do]) if data.key? :zaruka_do
        root << build_element('OdpOs', data[:odp_os]) if data.key? :odp_os
        root << build_element('DruhZak', data[:druh_zak]) if data.key? :druh_zak
        root << build_element('TypZak', data[:typ_zak]) if data.key? :typ_zak
        root << build_element('StavZak', data[:stav_zak]) if data.key? :stav_zak
        root << build_element('Hodnoceni', data[:hodnoceni]) if data.key? :hodnoceni
        root << build_element('CObjednavk', data[:c_objednavk]) if data.key? :c_objednavk
        root << build_element('Vystavil', data[:vystavil]) if data.key? :vystavil

        if data.key? :dod_odb
          root << FirmaType.new('DodOdb', data[:dod_odb]).builder
        end

        if data.key? :vlajky
          root << Vlajky.new('Vlajky', data[:vlajky]).builder
        end

        if data.key? :seznam_zakazkovy_kusovnik
          element = Ox::Element.new('SeznamZakazkovyKusovnik')
          data[:seznam_zakazkovy_kusovnik].each { |i| element << KusovnikType.new('ZakazkovyKusovnik', i).builder }
          root << element
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