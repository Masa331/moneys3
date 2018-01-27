require 'money_s3/base_element'
require 'money_s3/adresa_type'
require 'money_s3/telefon_type'
require 'money_s3/telefon_type'
require 'money_s3/telefon_type'
require 'money_s3/eshop'

module MoneyS3
  class KonecPrijFirmaType
    include BaseElement

    def nazev
      at :Nazev
    end

    def guid
      at :GUID
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

    def adresa
      element_xml = at :Adresa

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

    def eshop
      element_xml = at :eshop

      Eshop.new(element_xml) if element_xml
    end
  end
end
