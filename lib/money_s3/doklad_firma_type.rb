require 'money_s3/base_element'
require 'money_s3/adresa_type'
require 'money_s3/adresa_type'
require 'money_s3/adresa_type'
require 'money_s3/telefon_type'
require 'money_s3/telefon_type'
require 'money_s3/telefon_type'
require 'money_s3/isdoc'
require 'money_s3/eshop'

module MoneyS3
  class DokladFirmaType
    include BaseElement

    def obch_nazev
      at :ObchNazev
    end

    def fakt_nazev
      at :FaktNazev
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

    def guid
      at :GUID
    end

    def nazev
      at :Nazev
    end

    def e_mail
      at :EMail
    end

    def www
      at :WWW
    end

    def platce_dph
      at :PlatceDPH
    end

    def fyz_osoba
      at :FyzOsoba
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

    def kod_partn
      at :KodPartn
    end

    def obch_adresa
      submodel_at(AdresaType, :ObchAdresa)
    end

    def fakt_adresa
      submodel_at(AdresaType, :FaktAdresa)
    end

    def adresa
      submodel_at(AdresaType, :Adresa)
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
  end
end
