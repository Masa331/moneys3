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
require 'money_s3/skupina_firem_type'
require 'money_s3/vlajky'
require 'money_s3/bank_spojeni_type'

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

    def osoba
      submodel_at(OsobaType, :Osoba)
    end

    def skupina
      submodel_at(SkupinaFiremType, :Skupina)
    end

    def vlajky
      submodel_at(Vlajky, :Vlajky)
    end

    def seznam_bank_spojeni
      array_of_at(BankSpojeniType, [:SeznamBankSpojeni, :BankSpojeni])
    end

    def dokumenty
      array_of_at(String, [:Dokumenty, :Dokument])
    end
  end
end
