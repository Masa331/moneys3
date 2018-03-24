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
    class Firma
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
        hash = {}

        hash[:guid] = guid if raw.key? :GUID
        hash[:nazev] = nazev if raw.key? :Nazev
        hash[:skupina_id] = skupina_id if raw.key? :SkupinaID
        hash[:obch_nazev] = obch_nazev if raw.key? :ObchNazev
        hash[:fakt_nazev] = fakt_nazev if raw.key? :FaktNazev
        hash[:e_mail] = e_mail if raw.key? :EMail
        hash[:www] = www if raw.key? :WWW
        hash[:spojeni] = spojeni if raw.key? :Spojeni
        hash[:ico] = ico if raw.key? :ICO
        hash[:dic] = dic if raw.key? :DIC
        hash[:dicsk] = dicsk if raw.key? :DICSK
        hash[:platce_dph] = platce_dph if raw.key? :PlatceDPH
        hash[:fyz_osoba] = fyz_osoba if raw.key? :FyzOsoba
        hash[:kod_dan_ur] = kod_dan_ur if raw.key? :KodDanUr
        hash[:banka] = banka if raw.key? :Banka
        hash[:ucet] = ucet if raw.key? :Ucet
        hash[:kod_banky] = kod_banky if raw.key? :KodBanky
        hash[:v_symb] = v_symb if raw.key? :VSymb
        hash[:spec_sym] = spec_sym if raw.key? :SpecSym
        hash[:cinnosti] = cinnosti if raw.key? :Cinnosti
        hash[:adr_klice] = adr_klice if raw.key? :AdrKlice
        hash[:ceny] = ceny if raw.key? :Ceny
        hash[:ceniky] = ceniky if raw.key? :Ceniky
        hash[:kredit] = kredit if raw.key? :Kredit
        hash[:kredit_val] = kredit_val if raw.key? :KreditVal
        hash[:splat_poh] = splat_poh if raw.key? :SplatPoh
        hash[:splat_zav] = splat_zav if raw.key? :SplatZav
        hash[:spl_poh_dni] = spl_poh_dni if raw.key? :SplPohDni
        hash[:spl_zav_dni] = spl_zav_dni if raw.key? :SplZavDni
        hash[:sleva] = sleva if raw.key? :Sleva
        hash[:flag_sleva] = flag_sleva if raw.key? :FlagSleva
        hash[:mail] = mail if raw.key? :Mail
        hash[:zprava] = zprava if raw.key? :Zprava
        hash[:poznamka] = poznamka if raw.key? :Poznamka
        hash[:kod_partn] = kod_partn if raw.key? :KodPartn
        hash[:adresa] = adresa.to_h if raw.key? :Adresa
        hash[:obch_adresa] = obch_adresa.to_h if raw.key? :ObchAdresa
        hash[:fakt_adresa] = fakt_adresa.to_h if raw.key? :FaktAdresa
        hash[:tel] = tel.to_h if raw.key? :Tel
        hash[:fax] = fax.to_h if raw.key? :Fax
        hash[:mobil] = mobil.to_h if raw.key? :Mobil
        hash[:isdoc] = isdoc.to_h if raw.key? :ISDOC
        hash[:eshop] = eshop.to_h if raw.key? :eshop
        hash[:skupina] = skupina.to_h if raw.key? :Skupina
        hash[:vlajky] = vlajky.to_h if raw.key? :Vlajky
        hash[:osoba] = osoba.map(&:to_h) if raw.key? :Osoba
        hash[:seznam_bank_spojeni] = seznam_bank_spojeni.map(&:to_h) if raw.key? :SeznamBankSpojeni
        hash[:dokumenty] = dokumenty if raw.key? :Dokumenty

        hash
      end
    end
  end
end