require 'money_s3/base_element'
require 'money_s3/adresa_type'
require 'money_s3/adresa_type'
require 'money_s3/adresa_type'
require 'money_s3/telefon_type'
require 'money_s3/telefon_type'
require 'money_s3/telefon_type'
require 'money_s3/isdoc'
require 'money_s3/eshop'
require 'money_s3/osoba_type'
require 'money_s3/seznam_bank_spojeni'
require 'money_s3/skupina_firem_type'
require 'money_s3/vlajky'
require 'money_s3/dokumenty'

module MoneyS3
  class FirmaType
    include BaseElement

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
      element_xml = at :Adresa

      AdresaType.new(element_xml) if element_xml
    end

    def obch_adresa
      element_xml = at :ObchAdresa

      AdresaType.new(element_xml) if element_xml
    end

    def fakt_adresa
      element_xml = at :FaktAdresa

      AdresaType.new(element_xml) if element_xml
    end

    def tel
      element_xml = at :Tel

      TelefonType.new(element_xml) if element_xml
    end

    def fax
      element_xml = at :Fax

      TelefonType.new(element_xml) if element_xml
    end

    def mobil
      element_xml = at :Mobil

      TelefonType.new(element_xml) if element_xml
    end

    def isdoc
      element_xml = at :ISDOC

      ISDOC.new(element_xml) if element_xml
    end

    def eshop
      element_xml = at :eshop

      Eshop.new(element_xml) if element_xml
    end

    def osoba
      element_xml = at :Osoba

      OsobaType.new(element_xml) if element_xml
    end

    def seznam_bank_spojeni
      element_xml = at :SeznamBankSpojeni

      SeznamBankSpojeni.new(element_xml) if element_xml
    end

    def skupina
      element_xml = at :Skupina

      SkupinaFiremType.new(element_xml) if element_xml
    end

    def vlajky
      element_xml = at :Vlajky

      Vlajky.new(element_xml) if element_xml
    end

    def dokumenty
      element_xml = at :Dokumenty

      Dokumenty.new(element_xml) if element_xml
    end
  end
end
