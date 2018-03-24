require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/adresa_type'
require 'money_s3/parsers/telefon_type'

module MoneyS3
  module Parsers
    class OsobaType
      include BaseParser

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

      def to_h
        hash = {}

        hash[:osloveni] = osloveni if raw.key? :Osloveni
        hash[:titul_pred] = titul_pred if raw.key? :TitulPred
        hash[:titul_za] = titul_za if raw.key? :TitulZa
        hash[:jmeno] = jmeno if raw.key? :Jmeno
        hash[:prijmeni] = prijmeni if raw.key? :Prijmeni
        hash[:dat_nar] = dat_nar if raw.key? :DatNar
        hash[:pohlavi] = pohlavi if raw.key? :Pohlavi
        hash[:funkce] = funkce if raw.key? :Funkce
        hash[:spojeni] = spojeni if raw.key? :Spojeni
        hash[:e_mail] = e_mail if raw.key? :EMail
        hash[:mail] = mail if raw.key? :Mail
        hash[:mail_datum] = mail_datum if raw.key? :MailDatum
        hash[:pozn] = pozn if raw.key? :Pozn
        hash[:kod_partn] = kod_partn if raw.key? :KodPartn
        hash[:guid] = guid if raw.key? :GUID
        hash[:jednatel] = jednatel if raw.key? :Jednatel
        hash[:adresa] = adresa.to_h if raw.key? :Adresa
        hash[:tel] = tel.to_h if raw.key? :Tel
        hash[:fax] = fax.to_h if raw.key? :Fax
        hash[:mobil] = mobil.to_h if raw.key? :Mobil

        hash
      end
    end
  end
end