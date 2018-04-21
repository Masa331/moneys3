module MoneyS3
  module Parsers
    class OsobaType
      include BaseParser

      def osloveni
        at 'Osloveni'
      end

      def titul_pred
        at 'TitulPred'
      end

      def titul_za
        at 'TitulZa'
      end

      def jmeno
        at 'Jmeno'
      end

      def prijmeni
        at 'Prijmeni'
      end

      def dat_nar
        at 'DatNar'
      end

      def pohlavi
        at 'Pohlavi'
      end

      def funkce
        at 'Funkce'
      end

      def adresa
        submodel_at(AdresaType, 'Adresa')
      end

      def tel
        submodel_at(TelefonType, 'Tel')
      end

      def fax
        submodel_at(TelefonType, 'Fax')
      end

      def mobil
        submodel_at(TelefonType, 'Mobil')
      end

      def spojeni
        at 'Spojeni'
      end

      def e_mail
        at 'EMail'
      end

      def mail
        at 'Mail'
      end

      def mail_datum
        at 'MailDatum'
      end

      def pozn
        at 'Pozn'
      end

      def kod_partn
        at 'KodPartn'
      end

      def guid
        at 'GUID'
      end

      def jednatel
        at 'Jednatel'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:osloveni] = osloveni if has? 'Osloveni'
        hash[:titul_pred] = titul_pred if has? 'TitulPred'
        hash[:titul_za] = titul_za if has? 'TitulZa'
        hash[:jmeno] = jmeno if has? 'Jmeno'
        hash[:prijmeni] = prijmeni if has? 'Prijmeni'
        hash[:dat_nar] = dat_nar if has? 'DatNar'
        hash[:pohlavi] = pohlavi if has? 'Pohlavi'
        hash[:funkce] = funkce if has? 'Funkce'
        hash[:adresa] = adresa.to_h_with_attrs if has? 'Adresa'
        hash[:tel] = tel.to_h_with_attrs if has? 'Tel'
        hash[:fax] = fax.to_h_with_attrs if has? 'Fax'
        hash[:mobil] = mobil.to_h_with_attrs if has? 'Mobil'
        hash[:spojeni] = spojeni if has? 'Spojeni'
        hash[:e_mail] = e_mail if has? 'EMail'
        hash[:mail] = mail if has? 'Mail'
        hash[:mail_datum] = mail_datum if has? 'MailDatum'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:kod_partn] = kod_partn if has? 'KodPartn'
        hash[:guid] = guid if has? 'GUID'
        hash[:jednatel] = jednatel if has? 'Jednatel'

        hash
      end
    end
  end
end