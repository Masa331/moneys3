module MoneyS3
  module Builders
    class OsobaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Osloveni', data[:osloveni], data[:osloveni_attributes]) if data.key? :osloveni
        root << build_element('TitulPred', data[:titul_pred], data[:titul_pred_attributes]) if data.key? :titul_pred
        root << build_element('TitulZa', data[:titul_za], data[:titul_za_attributes]) if data.key? :titul_za
        root << build_element('Jmeno', data[:jmeno], data[:jmeno_attributes]) if data.key? :jmeno
        root << build_element('Prijmeni', data[:prijmeni], data[:prijmeni_attributes]) if data.key? :prijmeni
        root << build_element('DatNar', data[:dat_nar], data[:dat_nar_attributes]) if data.key? :dat_nar
        root << build_element('Pohlavi', data[:pohlavi], data[:pohlavi_attributes]) if data.key? :pohlavi
        root << build_element('Funkce', data[:funkce], data[:funkce_attributes]) if data.key? :funkce
        if data.key? :adresa
          root << AdresaType.new('Adresa', data[:adresa]).builder
        end
        if data.key? :tel
          root << TelefonType.new('Tel', data[:tel]).builder
        end
        if data.key? :fax
          root << TelefonType.new('Fax', data[:fax]).builder
        end
        if data.key? :mobil
          root << TelefonType.new('Mobil', data[:mobil]).builder
        end
        root << build_element('Spojeni', data[:spojeni], data[:spojeni_attributes]) if data.key? :spojeni
        root << build_element('EMail', data[:e_mail], data[:e_mail_attributes]) if data.key? :e_mail
        root << build_element('Mail', data[:mail], data[:mail_attributes]) if data.key? :mail
        root << build_element('MailDatum', data[:mail_datum], data[:mail_datum_attributes]) if data.key? :mail_datum
        root << build_element('Pozn', data[:pozn], data[:pozn_attributes]) if data.key? :pozn
        root << build_element('KodPartn', data[:kod_partn], data[:kod_partn_attributes]) if data.key? :kod_partn
        root << build_element('GUID', data[:guid], data[:guid_attributes]) if data.key? :guid
        root << build_element('Jednatel', data[:jednatel], data[:jednatel_attributes]) if data.key? :jednatel

        root
      end
    end
  end
end