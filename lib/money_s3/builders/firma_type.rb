require 'money_s3/builders/base_builder'
require 'money_s3/builders/adresa_type'
require 'money_s3/builders/telefon_type'
require 'money_s3/builders/isdoc'
require 'money_s3/builders/eshop'
require 'money_s3/builders/skupina_firem_type'
require 'money_s3/builders/vlajky'
require 'money_s3/builders/osoba_type'
require 'money_s3/builders/bank_spojeni_type'

module MoneyS3
  module Builders
    class FirmaType
      include BaseBuilder

      attr_accessor :guid, :nazev, :skupina_id, :obch_nazev, :fakt_nazev, :e_mail, :www, :spojeni, :ico, :dic, :dicsk, :platce_dph, :fyz_osoba, :kod_dan_ur, :banka, :ucet, :kod_banky, :v_symb, :spec_sym, :cinnosti, :adr_klice, :ceny, :ceniky, :kredit, :kredit_val, :splat_poh, :splat_zav, :spl_poh_dni, :spl_zav_dni, :sleva, :flag_sleva, :mail, :zprava, :poznamka, :kod_partn, :adresa, :obch_adresa, :fakt_adresa, :tel, :fax, :mobil, :isdoc, :eshop, :skupina, :vlajky, :osoba, :seznam_bank_spojeni, :dokumenty

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('GUID') << guid) if guid
        root << (Ox::Element.new('Nazev') << nazev) if nazev
        root << (Ox::Element.new('SkupinaID') << skupina_id) if skupina_id
        root << (Ox::Element.new('ObchNazev') << obch_nazev) if obch_nazev
        root << (Ox::Element.new('FaktNazev') << fakt_nazev) if fakt_nazev
        root << (Ox::Element.new('EMail') << e_mail) if e_mail
        root << (Ox::Element.new('WWW') << www) if www
        root << (Ox::Element.new('Spojeni') << spojeni) if spojeni
        root << (Ox::Element.new('ICO') << ico) if ico
        root << (Ox::Element.new('DIC') << dic) if dic
        root << (Ox::Element.new('DICSK') << dicsk) if dicsk
        root << (Ox::Element.new('PlatceDPH') << platce_dph) if platce_dph
        root << (Ox::Element.new('FyzOsoba') << fyz_osoba) if fyz_osoba
        root << (Ox::Element.new('KodDanUr') << kod_dan_ur) if kod_dan_ur
        root << (Ox::Element.new('Banka') << banka) if banka
        root << (Ox::Element.new('Ucet') << ucet) if ucet
        root << (Ox::Element.new('KodBanky') << kod_banky) if kod_banky
        root << (Ox::Element.new('VSymb') << v_symb) if v_symb
        root << (Ox::Element.new('SpecSym') << spec_sym) if spec_sym
        root << (Ox::Element.new('Cinnosti') << cinnosti) if cinnosti
        root << (Ox::Element.new('AdrKlice') << adr_klice) if adr_klice
        root << (Ox::Element.new('Ceny') << ceny) if ceny
        root << (Ox::Element.new('Ceniky') << ceniky) if ceniky
        root << (Ox::Element.new('Kredit') << kredit) if kredit
        root << (Ox::Element.new('KreditVal') << kredit_val) if kredit_val
        root << (Ox::Element.new('SplatPoh') << splat_poh) if splat_poh
        root << (Ox::Element.new('SplatZav') << splat_zav) if splat_zav
        root << (Ox::Element.new('SplPohDni') << spl_poh_dni) if spl_poh_dni
        root << (Ox::Element.new('SplZavDni') << spl_zav_dni) if spl_zav_dni
        root << (Ox::Element.new('Sleva') << sleva) if sleva
        root << (Ox::Element.new('FlagSleva') << flag_sleva) if flag_sleva
        root << (Ox::Element.new('Mail') << mail) if mail
        root << (Ox::Element.new('Zprava') << zprava) if zprava
        root << (Ox::Element.new('Poznamka') << poznamka) if poznamka
        root << (Ox::Element.new('KodPartn') << kod_partn) if kod_partn
        root << AdresaType.new(adresa, 'Adresa').builder if adresa
        root << AdresaType.new(obch_adresa, 'ObchAdresa').builder if obch_adresa
        root << AdresaType.new(fakt_adresa, 'FaktAdresa').builder if fakt_adresa
        root << TelefonType.new(tel, 'Tel').builder if tel
        root << TelefonType.new(fax, 'Fax').builder if fax
        root << TelefonType.new(mobil, 'Mobil').builder if mobil
        root << ISDOC.new(isdoc, 'ISDOC').builder if isdoc
        root << Eshop.new(eshop, 'eshop').builder if eshop
        root << SkupinaFiremType.new(skupina, 'Skupina').builder if skupina
        root << Vlajky.new(vlajky, 'Vlajky').builder if vlajky

        if osoba
          osoba.each { |i| root << OsobaType.new(i, 'Osoba').builder }
        end

        if seznam_bank_spojeni
          element = Ox::Element.new('SeznamBankSpojeni')
          seznam_bank_spojeni.each { |i| element << BankSpojeniType.new(i, 'BankSpojeni').builder }
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