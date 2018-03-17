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
        { osloveni: osloveni,
          titul_pred: titul_pred,
          titul_za: titul_za,
          jmeno: jmeno,
          prijmeni: prijmeni,
          dat_nar: dat_nar,
          pohlavi: pohlavi,
          funkce: funkce,
          spojeni: spojeni,
          e_mail: e_mail,
          mail: mail,
          mail_datum: mail_datum,
          pozn: pozn,
          kod_partn: kod_partn,
          guid: guid,
          jednatel: jednatel,
          adresa: adresa.to_h,
          tel: tel.to_h,
          fax: fax.to_h,
          mobil: mobil.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end