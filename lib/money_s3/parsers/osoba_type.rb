module MoneyS3
  module Parsers
    class OsobaType
      include ParserCore::BaseParser

      def osloveni
        at 'Osloveni'
      end

      def osloveni_attributes
        attributes_at 'Osloveni'
      end

      def titul_pred
        at 'TitulPred'
      end

      def titul_pred_attributes
        attributes_at 'TitulPred'
      end

      def titul_za
        at 'TitulZa'
      end

      def titul_za_attributes
        attributes_at 'TitulZa'
      end

      def jmeno
        at 'Jmeno'
      end

      def jmeno_attributes
        attributes_at 'Jmeno'
      end

      def prijmeni
        at 'Prijmeni'
      end

      def prijmeni_attributes
        attributes_at 'Prijmeni'
      end

      def dat_nar
        at 'DatNar'
      end

      def dat_nar_attributes
        attributes_at 'DatNar'
      end

      def pohlavi
        at 'Pohlavi'
      end

      def pohlavi_attributes
        attributes_at 'Pohlavi'
      end

      def funkce
        at 'Funkce'
      end

      def funkce_attributes
        attributes_at 'Funkce'
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

      def spojeni_attributes
        attributes_at 'Spojeni'
      end

      def e_mail
        at 'EMail'
      end

      def e_mail_attributes
        attributes_at 'EMail'
      end

      def mail
        at 'Mail'
      end

      def mail_attributes
        attributes_at 'Mail'
      end

      def mail_datum
        at 'MailDatum'
      end

      def mail_datum_attributes
        attributes_at 'MailDatum'
      end

      def pozn
        at 'Pozn'
      end

      def pozn_attributes
        attributes_at 'Pozn'
      end

      def kod_partn
        at 'KodPartn'
      end

      def kod_partn_attributes
        attributes_at 'KodPartn'
      end

      def guid
        at 'GUID'
      end

      def guid_attributes
        attributes_at 'GUID'
      end

      def jednatel
        at 'Jednatel'
      end

      def jednatel_attributes
        attributes_at 'Jednatel'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:osloveni] = osloveni if has? 'Osloveni'
        hash[:osloveni_attributes] = osloveni_attributes if has? 'Osloveni'
        hash[:titul_pred] = titul_pred if has? 'TitulPred'
        hash[:titul_pred_attributes] = titul_pred_attributes if has? 'TitulPred'
        hash[:titul_za] = titul_za if has? 'TitulZa'
        hash[:titul_za_attributes] = titul_za_attributes if has? 'TitulZa'
        hash[:jmeno] = jmeno if has? 'Jmeno'
        hash[:jmeno_attributes] = jmeno_attributes if has? 'Jmeno'
        hash[:prijmeni] = prijmeni if has? 'Prijmeni'
        hash[:prijmeni_attributes] = prijmeni_attributes if has? 'Prijmeni'
        hash[:dat_nar] = dat_nar if has? 'DatNar'
        hash[:dat_nar_attributes] = dat_nar_attributes if has? 'DatNar'
        hash[:pohlavi] = pohlavi if has? 'Pohlavi'
        hash[:pohlavi_attributes] = pohlavi_attributes if has? 'Pohlavi'
        hash[:funkce] = funkce if has? 'Funkce'
        hash[:funkce_attributes] = funkce_attributes if has? 'Funkce'
        hash[:adresa] = adresa.to_h if has? 'Adresa'
        hash[:tel] = tel.to_h if has? 'Tel'
        hash[:fax] = fax.to_h if has? 'Fax'
        hash[:mobil] = mobil.to_h if has? 'Mobil'
        hash[:spojeni] = spojeni if has? 'Spojeni'
        hash[:spojeni_attributes] = spojeni_attributes if has? 'Spojeni'
        hash[:e_mail] = e_mail if has? 'EMail'
        hash[:e_mail_attributes] = e_mail_attributes if has? 'EMail'
        hash[:mail] = mail if has? 'Mail'
        hash[:mail_attributes] = mail_attributes if has? 'Mail'
        hash[:mail_datum] = mail_datum if has? 'MailDatum'
        hash[:mail_datum_attributes] = mail_datum_attributes if has? 'MailDatum'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'
        hash[:kod_partn] = kod_partn if has? 'KodPartn'
        hash[:kod_partn_attributes] = kod_partn_attributes if has? 'KodPartn'
        hash[:guid] = guid if has? 'GUID'
        hash[:guid_attributes] = guid_attributes if has? 'GUID'
        hash[:jednatel] = jednatel if has? 'Jednatel'
        hash[:jednatel_attributes] = jednatel_attributes if has? 'Jednatel'

        hash
      end
    end
  end
end