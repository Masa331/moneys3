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

        hash[:guid] = guid if has? :GUID
        hash[:nazev] = nazev if has? :Nazev
        hash[:skupina_id] = skupina_id if has? :SkupinaID
        hash[:obch_nazev] = obch_nazev if has? :ObchNazev
        hash[:fakt_nazev] = fakt_nazev if has? :FaktNazev
        hash[:e_mail] = e_mail if has? :EMail
        hash[:www] = www if has? :WWW
        hash[:spojeni] = spojeni if has? :Spojeni
        hash[:ico] = ico if has? :ICO
        hash[:dic] = dic if has? :DIC
        hash[:dicsk] = dicsk if has? :DICSK
        hash[:platce_dph] = platce_dph if has? :PlatceDPH
        hash[:fyz_osoba] = fyz_osoba if has? :FyzOsoba
        hash[:kod_dan_ur] = kod_dan_ur if has? :KodDanUr
        hash[:banka] = banka if has? :Banka
        hash[:ucet] = ucet if has? :Ucet
        hash[:kod_banky] = kod_banky if has? :KodBanky
        hash[:v_symb] = v_symb if has? :VSymb
        hash[:spec_sym] = spec_sym if has? :SpecSym
        hash[:cinnosti] = cinnosti if has? :Cinnosti
        hash[:adr_klice] = adr_klice if has? :AdrKlice
        hash[:ceny] = ceny if has? :Ceny
        hash[:ceniky] = ceniky if has? :Ceniky
        hash[:kredit] = kredit if has? :Kredit
        hash[:kredit_val] = kredit_val if has? :KreditVal
        hash[:splat_poh] = splat_poh if has? :SplatPoh
        hash[:splat_zav] = splat_zav if has? :SplatZav
        hash[:spl_poh_dni] = spl_poh_dni if has? :SplPohDni
        hash[:spl_zav_dni] = spl_zav_dni if has? :SplZavDni
        hash[:sleva] = sleva if has? :Sleva
        hash[:flag_sleva] = flag_sleva if has? :FlagSleva
        hash[:mail] = mail if has? :Mail
        hash[:zprava] = zprava if has? :Zprava
        hash[:poznamka] = poznamka if has? :Poznamka
        hash[:kod_partn] = kod_partn if has? :KodPartn
        hash[:adresa] = adresa.to_h if has? :Adresa
        hash[:obch_adresa] = obch_adresa.to_h if has? :ObchAdresa
        hash[:fakt_adresa] = fakt_adresa.to_h if has? :FaktAdresa
        hash[:tel] = tel.to_h if has? :Tel
        hash[:fax] = fax.to_h if has? :Fax
        hash[:mobil] = mobil.to_h if has? :Mobil
        hash[:isdoc] = isdoc.to_h if has? :ISDOC
        hash[:eshop] = eshop.to_h if has? :eshop
        hash[:skupina] = skupina.to_h if has? :Skupina
        hash[:vlajky] = vlajky.to_h if has? :Vlajky
        hash[:osoba] = osoba.map(&:to_h) if has? :Osoba
        hash[:seznam_bank_spojeni] = seznam_bank_spojeni.map(&:to_h) if has? :SeznamBankSpojeni
        hash[:dokumenty] = dokumenty if has? :Dokumenty

        hash
      end
    end
  end
end