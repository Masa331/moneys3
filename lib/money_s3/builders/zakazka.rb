require 'money_s3/builders/base_builder'
require 'money_s3/builders/firma_type'
require 'money_s3/builders/vlajky'
require 'money_s3/builders/kusovnik_type'

module MoneyS3
  module Builders
    class Zakazka
      include BaseBuilder

      attr_accessor :zkrat, :nazev, :obch_prip, :pozn, :dat_pl_zah, :dat_zah, :dat_pl_pred, :dat_pred, :zaruka_do, :odp_os, :druh_zak, :typ_zak, :stav_zak, :hodnoceni, :c_objednavk, :vystavil, :dod_odb, :vlajky, :seznam_zakazkovy_kusovnik, :dokumenty

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkrat') << zkrat) if zkrat
        root << (Ox::Element.new('Nazev') << nazev) if nazev
        root << (Ox::Element.new('ObchPrip') << obch_prip) if obch_prip
        root << (Ox::Element.new('Pozn') << pozn) if pozn
        root << (Ox::Element.new('DatPlZah') << dat_pl_zah) if dat_pl_zah
        root << (Ox::Element.new('DatZah') << dat_zah) if dat_zah
        root << (Ox::Element.new('DatPlPred') << dat_pl_pred) if dat_pl_pred
        root << (Ox::Element.new('DatPred') << dat_pred) if dat_pred
        root << (Ox::Element.new('ZarukaDo') << zaruka_do) if zaruka_do
        root << (Ox::Element.new('OdpOs') << odp_os) if odp_os
        root << (Ox::Element.new('DruhZak') << druh_zak) if druh_zak
        root << (Ox::Element.new('TypZak') << typ_zak) if typ_zak
        root << (Ox::Element.new('StavZak') << stav_zak) if stav_zak
        root << (Ox::Element.new('Hodnoceni') << hodnoceni) if hodnoceni
        root << (Ox::Element.new('CObjednavk') << c_objednavk) if c_objednavk
        root << (Ox::Element.new('Vystavil') << vystavil) if vystavil
        root << FirmaType.new(dod_odb, 'DodOdb').builder if dod_odb
        root << Vlajky.new(vlajky, 'Vlajky').builder if vlajky

        if seznam_zakazkovy_kusovnik
          element = Ox::Element.new('SeznamZakazkovyKusovnik')
          seznam_zakazkovy_kusovnik.each { |i| element << KusovnikType.new(i, 'ZakazkovyKusovnik').builder }
          root << element
        end

        if dokumenty
          element = Ox::Element.new('Dokumenty')
          dokumenty.map { |i| Ox::Element.new('Dokument') << i }.each { |i| element << i }
          root << element
        end

        root
      end
    end
  end
end