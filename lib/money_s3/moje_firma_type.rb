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
  end
end
