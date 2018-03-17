require 'money_s3/builders/base_builder'
require 'money_s3/builders/adresa_type'
require 'money_s3/builders/telefon_type'
require 'money_s3/builders/eshop'

module MoneyS3
  module Builders
    class SkDokladFirmaType
      include BaseBuilder

      attr_accessor :obch_nazev, :fakt_nazev, :ico, :dic, :dicsk, :guid, :nazev, :e_mail, :www, :platce_dph, :fyz_osoba, :banka, :ucet, :kod_banky, :v_symb, :spec_sym, :kod_partn, :obch_adresa, :fakt_adresa, :adresa, :tel, :fax, :mobil, :eshop

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('ObchNazev') << obch_nazev) if obch_nazev
        root << (Ox::Element.new('FaktNazev') << fakt_nazev) if fakt_nazev
        root << (Ox::Element.new('ICO') << ico) if ico
        root << (Ox::Element.new('DIC') << dic) if dic
        root << (Ox::Element.new('DICSK') << dicsk) if dicsk
        root << (Ox::Element.new('GUID') << guid) if guid
        root << (Ox::Element.new('Nazev') << nazev) if nazev
        root << (Ox::Element.new('EMail') << e_mail) if e_mail
        root << (Ox::Element.new('WWW') << www) if www
        root << (Ox::Element.new('PlatceDPH') << platce_dph) if platce_dph
        root << (Ox::Element.new('FyzOsoba') << fyz_osoba) if fyz_osoba
        root << (Ox::Element.new('Banka') << banka) if banka
        root << (Ox::Element.new('Ucet') << ucet) if ucet
        root << (Ox::Element.new('KodBanky') << kod_banky) if kod_banky
        root << (Ox::Element.new('VSymb') << v_symb) if v_symb
        root << (Ox::Element.new('SpecSym') << spec_sym) if spec_sym
        root << (Ox::Element.new('KodPartn') << kod_partn) if kod_partn
        root << AdresaType.new(obch_adresa, 'ObchAdresa').builder if obch_adresa
        root << AdresaType.new(fakt_adresa, 'FaktAdresa').builder if fakt_adresa
        root << AdresaType.new(adresa, 'Adresa').builder if adresa
        root << TelefonType.new(tel, 'Tel').builder if tel
        root << TelefonType.new(fax, 'Fax').builder if fax
        root << TelefonType.new(mobil, 'Mobil').builder if mobil
        root << Eshop.new(eshop, 'eshop').builder if eshop

        root
      end
    end
  end
end