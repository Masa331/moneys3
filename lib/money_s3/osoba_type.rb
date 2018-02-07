require 'money_s3/base_element'
require 'money_s3/adresa_type'
require 'money_s3/telefon_type'
require 'money_s3/telefon_type'
require 'money_s3/telefon_type'

module MoneyS3
  class OsobaType
    include BaseElement

    def osloveni
      at :Osloveni
    end

    def titul_pred
      at :TitulPred
    end

    def titul_za
      at :TitulZa
    end

    def jmeno
      at :Jmeno
    end

    def prijmeni
      at :Prijmeni
    end

    def dat_nar
      at :DatNar
    end

    def pohlavi
      at :Pohlavi
    end

    def funkce
      at :Funkce
    end

    def spojeni
      at :Spojeni
    end

    def e_mail
      at :EMail
    end

    def mail
      at :Mail
    end

    def mail_datum
      at :MailDatum
    end

    def pozn
      at :Pozn
    end

    def kod_partn
      at :KodPartn
    end

    def guid
      at :GUID
    end

    def jednatel
      at :Jednatel
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
  end
end