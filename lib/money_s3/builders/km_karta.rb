require 'money_s3/builders/base_builder'
require 'money_s3/builders/konfigurace'
require 'money_s3/builders/definice_ceny'
require 'money_s3/builders/komponenta_type'
require 'money_s3/builders/parametr_karta_type'

module MoneyS3
  module Builders
    class KmKarta
      include BaseBuilder

      attr_accessor :popis, :zkrat, :pozn, :mj, :uziv_code, :guid, :katalog, :bar_code, :bc_typ, :typ_zar_doby, :zar_doba, :ev_druhy, :ev_vyr_cis, :des_mist, :obrazek, :obrazek2, :zarovnat, :zarovnat2, :ceny, :nastav, :popis1, :pozn1, :popis2, :pozn2, :popis3, :pozn3, :hmotnost, :objem, :kod_kn, :predm_pln, :kod_statu, :typ_karty, :zboz_kuch, :i_dokl_pol, :i_dokl_agend, :konfigurace, :definice_ceny, :slozeni, :seznam_parametru_karty, :dokumenty

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('Zkrat') << zkrat) if zkrat
        root << (Ox::Element.new('Pozn') << pozn) if pozn
        root << (Ox::Element.new('MJ') << mj) if mj
        root << (Ox::Element.new('UzivCode') << uziv_code) if uziv_code
        root << (Ox::Element.new('GUID') << guid) if guid
        root << (Ox::Element.new('Katalog') << katalog) if katalog
        root << (Ox::Element.new('BarCode') << bar_code) if bar_code
        root << (Ox::Element.new('BCTyp') << bc_typ) if bc_typ
        root << (Ox::Element.new('TypZarDoby') << typ_zar_doby) if typ_zar_doby
        root << (Ox::Element.new('ZarDoba') << zar_doba) if zar_doba
        root << (Ox::Element.new('EvDruhy') << ev_druhy) if ev_druhy
        root << (Ox::Element.new('EvVyrCis') << ev_vyr_cis) if ev_vyr_cis
        root << (Ox::Element.new('DesMist') << des_mist) if des_mist
        root << (Ox::Element.new('Obrazek') << obrazek) if obrazek
        root << (Ox::Element.new('Obrazek2') << obrazek2) if obrazek2
        root << (Ox::Element.new('Zarovnat') << zarovnat) if zarovnat
        root << (Ox::Element.new('Zarovnat2') << zarovnat2) if zarovnat2
        root << (Ox::Element.new('Ceny') << ceny) if ceny
        root << (Ox::Element.new('Nastav') << nastav) if nastav
        root << (Ox::Element.new('Popis1') << popis1) if popis1
        root << (Ox::Element.new('Pozn1') << pozn1) if pozn1
        root << (Ox::Element.new('Popis2') << popis2) if popis2
        root << (Ox::Element.new('Pozn2') << pozn2) if pozn2
        root << (Ox::Element.new('Popis3') << popis3) if popis3
        root << (Ox::Element.new('Pozn3') << pozn3) if pozn3
        root << (Ox::Element.new('Hmotnost') << hmotnost) if hmotnost
        root << (Ox::Element.new('Objem') << objem) if objem
        root << (Ox::Element.new('KodKN') << kod_kn) if kod_kn
        root << (Ox::Element.new('PredmPln') << predm_pln) if predm_pln
        root << (Ox::Element.new('KodStatu') << kod_statu) if kod_statu
        root << (Ox::Element.new('TypKarty') << typ_karty) if typ_karty
        root << (Ox::Element.new('ZbozKuch') << zboz_kuch) if zboz_kuch
        root << (Ox::Element.new('iDoklPol') << i_dokl_pol) if i_dokl_pol
        root << (Ox::Element.new('iDoklAgend') << i_dokl_agend) if i_dokl_agend
        root << Konfigurace.new(konfigurace, 'konfigurace').builder if konfigurace
        root << DefiniceCeny.new(definice_ceny, 'definiceCeny').builder if definice_ceny

        if slozeni
          element = Ox::Element.new('Slozeni')
          slozeni.each { |i| element << KomponentaType.new(i, 'Komponenta').builder }
          root << element
        end

        if seznam_parametru_karty
          element = Ox::Element.new('SeznamParametruKarty')
          seznam_parametru_karty.each { |i| element << ParametrKartaType.new(i, 'ParametrKarty').builder }
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