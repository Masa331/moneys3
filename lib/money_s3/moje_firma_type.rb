require 'money_s3/base_element'
require 'money_s3/adresa_type'
require 'money_s3/adresa_type'
require 'money_s3/adresa_type'
require 'money_s3/telefon_type'
require 'money_s3/telefon_type'
require 'money_s3/telefon_type'

module MoneyS3
  class MojeFirmaType
    include BaseElement

    def nazev
      at :Nazev
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

    def ico
      at :ICO
    end

    def dic
      at :DIC
    end

    def dicsk
      at :DICSK
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

    def kod_partn
      at :KodPartn
    end

    def fyz_osoba
      at :FyzOsoba
    end

    def mena_symb
      at :MenaSymb
    end

    def mena_kod
      at :MenaKod
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
  end
end
