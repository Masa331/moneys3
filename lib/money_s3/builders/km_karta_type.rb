require 'money_s3/builders/base_builder'
require 'money_s3/builders/konfigurace'
require 'money_s3/builders/definice_ceny'
require 'money_s3/builders/komponenta_type'
require 'money_s3/builders/parametr_karta_type'

module MoneyS3
  module Builders
    class KmKartaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :zkrat
          element = Ox::Element.new('Zkrat')
          element << attributes[:zkrat] if attributes[:zkrat]
          root << element
        end

        if attributes.key? :pozn
          element = Ox::Element.new('Pozn')
          element << attributes[:pozn] if attributes[:pozn]
          root << element
        end

        if attributes.key? :mj
          element = Ox::Element.new('MJ')
          element << attributes[:mj] if attributes[:mj]
          root << element
        end

        if attributes.key? :uziv_code
          element = Ox::Element.new('UzivCode')
          element << attributes[:uziv_code] if attributes[:uziv_code]
          root << element
        end

        if attributes.key? :guid
          element = Ox::Element.new('GUID')
          element << attributes[:guid] if attributes[:guid]
          root << element
        end

        if attributes.key? :katalog
          element = Ox::Element.new('Katalog')
          element << attributes[:katalog] if attributes[:katalog]
          root << element
        end

        if attributes.key? :bar_code
          element = Ox::Element.new('BarCode')
          element << attributes[:bar_code] if attributes[:bar_code]
          root << element
        end

        if attributes.key? :bc_typ
          element = Ox::Element.new('BCTyp')
          element << attributes[:bc_typ] if attributes[:bc_typ]
          root << element
        end

        if attributes.key? :typ_zar_doby
          element = Ox::Element.new('TypZarDoby')
          element << attributes[:typ_zar_doby] if attributes[:typ_zar_doby]
          root << element
        end

        if attributes.key? :zar_doba
          element = Ox::Element.new('ZarDoba')
          element << attributes[:zar_doba] if attributes[:zar_doba]
          root << element
        end

        if attributes.key? :ev_druhy
          element = Ox::Element.new('EvDruhy')
          element << attributes[:ev_druhy] if attributes[:ev_druhy]
          root << element
        end

        if attributes.key? :ev_vyr_cis
          element = Ox::Element.new('EvVyrCis')
          element << attributes[:ev_vyr_cis] if attributes[:ev_vyr_cis]
          root << element
        end

        if attributes.key? :des_mist
          element = Ox::Element.new('DesMist')
          element << attributes[:des_mist] if attributes[:des_mist]
          root << element
        end

        if attributes.key? :obrazek
          element = Ox::Element.new('Obrazek')
          element << attributes[:obrazek] if attributes[:obrazek]
          root << element
        end

        if attributes.key? :obrazek2
          element = Ox::Element.new('Obrazek2')
          element << attributes[:obrazek2] if attributes[:obrazek2]
          root << element
        end

        if attributes.key? :zarovnat
          element = Ox::Element.new('Zarovnat')
          element << attributes[:zarovnat] if attributes[:zarovnat]
          root << element
        end

        if attributes.key? :zarovnat2
          element = Ox::Element.new('Zarovnat2')
          element << attributes[:zarovnat2] if attributes[:zarovnat2]
          root << element
        end

        if attributes.key? :ceny
          element = Ox::Element.new('Ceny')
          element << attributes[:ceny] if attributes[:ceny]
          root << element
        end

        if attributes.key? :nastav
          element = Ox::Element.new('Nastav')
          element << attributes[:nastav] if attributes[:nastav]
          root << element
        end

        if attributes.key? :popis1
          element = Ox::Element.new('Popis1')
          element << attributes[:popis1] if attributes[:popis1]
          root << element
        end

        if attributes.key? :pozn1
          element = Ox::Element.new('Pozn1')
          element << attributes[:pozn1] if attributes[:pozn1]
          root << element
        end

        if attributes.key? :popis2
          element = Ox::Element.new('Popis2')
          element << attributes[:popis2] if attributes[:popis2]
          root << element
        end

        if attributes.key? :pozn2
          element = Ox::Element.new('Pozn2')
          element << attributes[:pozn2] if attributes[:pozn2]
          root << element
        end

        if attributes.key? :popis3
          element = Ox::Element.new('Popis3')
          element << attributes[:popis3] if attributes[:popis3]
          root << element
        end

        if attributes.key? :pozn3
          element = Ox::Element.new('Pozn3')
          element << attributes[:pozn3] if attributes[:pozn3]
          root << element
        end

        if attributes.key? :hmotnost
          element = Ox::Element.new('Hmotnost')
          element << attributes[:hmotnost] if attributes[:hmotnost]
          root << element
        end

        if attributes.key? :objem
          element = Ox::Element.new('Objem')
          element << attributes[:objem] if attributes[:objem]
          root << element
        end

        if attributes.key? :kod_kn
          element = Ox::Element.new('KodKN')
          element << attributes[:kod_kn] if attributes[:kod_kn]
          root << element
        end

        if attributes.key? :predm_pln
          element = Ox::Element.new('PredmPln')
          element << attributes[:predm_pln] if attributes[:predm_pln]
          root << element
        end

        if attributes.key? :kod_statu
          element = Ox::Element.new('KodStatu')
          element << attributes[:kod_statu] if attributes[:kod_statu]
          root << element
        end

        if attributes.key? :typ_karty
          element = Ox::Element.new('TypKarty')
          element << attributes[:typ_karty] if attributes[:typ_karty]
          root << element
        end

        if attributes.key? :zboz_kuch
          element = Ox::Element.new('ZbozKuch')
          element << attributes[:zboz_kuch] if attributes[:zboz_kuch]
          root << element
        end

        if attributes.key? :i_dokl_pol
          element = Ox::Element.new('iDoklPol')
          element << attributes[:i_dokl_pol] if attributes[:i_dokl_pol]
          root << element
        end

        if attributes.key? :i_dokl_agend
          element = Ox::Element.new('iDoklAgend')
          element << attributes[:i_dokl_agend] if attributes[:i_dokl_agend]
          root << element
        end

        if attributes.key? :konfigurace
          root << Konfigurace.new(attributes[:konfigurace], 'konfigurace').builder
        end

        if attributes.key? :definice_ceny
          root << DefiniceCeny.new(attributes[:definice_ceny], 'definiceCeny').builder
        end

        if attributes.key? :slozeni
          element = Ox::Element.new('Slozeni')
          attributes[:slozeni].each { |i| element << KomponentaType.new(i, 'Komponenta').builder }
          root << element
        end

        if attributes.key? :seznam_parametru_karty
          element = Ox::Element.new('SeznamParametruKarty')
          attributes[:seznam_parametru_karty].each { |i| element << ParametrKartaType.new(i, 'ParametrKarty').builder }
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