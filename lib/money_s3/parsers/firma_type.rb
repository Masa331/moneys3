require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/adresa_type'
require 'money_s3/parsers/telefon_type'
require 'money_s3/parsers/isdoc'
require 'money_s3/parsers/eshop'
require 'money_s3/parsers/skupina_firem_type'
require 'money_s3/parsers/vlajky'
require 'money_s3/parsers/osoba_type'
require 'money_s3/parsers/bank_spojeni_type'

module MoneyS3
  module Parsers
    class FirmaType
      include BaseParser

      def guid
        at :GUID
      end

      def nazev
        at :Nazev
      end

      def skupina_id
        at :SkupinaID
      end

      def obch_nazev
        at :ObchNazev
      end

      def fakt_nazev
        at :FaktNazev
      end

      def e_mail
        at :EMail
      end

      def www
        at :WWW
      end

      def spojeni
        at :Spojeni
      end

      def ico
        at :ICO
      end

      def dic
        at :DIC
      end

      def dicsk
        at :DICSK
      end

      def platce_dph
        at :PlatceDPH
      end

      def fyz_osoba
        at :FyzOsoba
      end

      def kod_dan_ur
        at :KodDanUr
      end

      def banka
        at :Banka
      end

      def ucet
        at :Ucet
      end

      def kod_banky
        at :KodBanky
      end

      def v_symb
        at :VSymb
      end

      def spec_sym
        at :SpecSym
      end

      def cinnosti
        at :Cinnosti
      end

      def adr_klice
        at :AdrKlice
      end

      def ceny
        at :Ceny
      end

      def ceniky
        at :Ceniky
      end

      def kredit
        at :Kredit
      end

      def kredit_val
        at :KreditVal
      end

      def splat_poh
        at :SplatPoh
      end

      def splat_zav
        at :SplatZav
      end

      def spl_poh_dni
        at :SplPohDni
      end

      def spl_zav_dni
        at :SplZavDni
      end

      def sleva
        at :Sleva
      end

      def flag_sleva
        at :FlagSleva
      end

      def mail
        at :Mail
      end

      def zprava
        at :Zprava
      end

      def poznamka
        at :Poznamka
      end

      def kod_partn
        at :KodPartn
      end

      def adresa
        submodel_at(AdresaType, :Adresa)
      end

      def obch_adresa
        submodel_at(AdresaType, :ObchAdresa)
      end

      def fakt_adresa
        submodel_at(AdresaType, :FaktAdresa)
      end

      def tel
        submodel_at(TelefonType, :Tel)
      end

      def fax
        submodel_at(TelefonType, :Fax)
      end

      def mobil
        submodel_at(TelefonType, :Mobil)
      end

      def isdoc
        submodel_at(ISDOC, :ISDOC)
      end

      def eshop
        submodel_at(Eshop, :eshop)
      end

      def skupina
        submodel_at(SkupinaFiremType, :Skupina)
      end

      def vlajky
        submodel_at(Vlajky, :Vlajky)
      end

      def osoba
        array_of_at(OsobaType, [:Osoba])
      end

      def seznam_bank_spojeni
        array_of_at(BankSpojeniType, [:SeznamBankSpojeni, :BankSpojeni])
      end

      def dokumenty
        array_of_at(String, [:Dokumenty, :Dokument])
      end

      def to_h
        { guid: guid,
          nazev: nazev,
          skupina_id: skupina_id,
          obch_nazev: obch_nazev,
          fakt_nazev: fakt_nazev,
          e_mail: e_mail,
          www: www,
          spojeni: spojeni,
          ico: ico,
          dic: dic,
          dicsk: dicsk,
          platce_dph: platce_dph,
          fyz_osoba: fyz_osoba,
          kod_dan_ur: kod_dan_ur,
          banka: banka,
          ucet: ucet,
          kod_banky: kod_banky,
          v_symb: v_symb,
          spec_sym: spec_sym,
          cinnosti: cinnosti,
          adr_klice: adr_klice,
          ceny: ceny,
          ceniky: ceniky,
          kredit: kredit,
          kredit_val: kredit_val,
          splat_poh: splat_poh,
          splat_zav: splat_zav,
          spl_poh_dni: spl_poh_dni,
          spl_zav_dni: spl_zav_dni,
          sleva: sleva,
          flag_sleva: flag_sleva,
          mail: mail,
          zprava: zprava,
          poznamka: poznamka,
          kod_partn: kod_partn,
          adresa: adresa.to_h,
          obch_adresa: obch_adresa.to_h,
          fakt_adresa: fakt_adresa.to_h,
          tel: tel.to_h,
          fax: fax.to_h,
          mobil: mobil.to_h,
          isdoc: isdoc.to_h,
          eshop: eshop.to_h,
          skupina: skupina.to_h,
          vlajky: vlajky.to_h,
          osoba: osoba.map(&:to_h),
          seznam_bank_spojeni: seznam_bank_spojeni.map(&:to_h),
          dokumenty: dokumenty
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end