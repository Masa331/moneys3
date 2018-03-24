require 'money_s3/builders/base_builder'
require 'money_s3/builders/adresa_type'
require 'money_s3/builders/telefon_type'

module MoneyS3
  module Builders
    class OsobaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :osloveni
          element = Ox::Element.new('Osloveni')
          element << attributes[:osloveni] if attributes[:osloveni]
          root << element
        end

        if attributes.key? :titul_pred
          element = Ox::Element.new('TitulPred')
          element << attributes[:titul_pred] if attributes[:titul_pred]
          root << element
        end

        if attributes.key? :titul_za
          element = Ox::Element.new('TitulZa')
          element << attributes[:titul_za] if attributes[:titul_za]
          root << element
        end

        if attributes.key? :jmeno
          element = Ox::Element.new('Jmeno')
          element << attributes[:jmeno] if attributes[:jmeno]
          root << element
        end

        if attributes.key? :prijmeni
          element = Ox::Element.new('Prijmeni')
          element << attributes[:prijmeni] if attributes[:prijmeni]
          root << element
        end

        if attributes.key? :dat_nar
          element = Ox::Element.new('DatNar')
          element << attributes[:dat_nar] if attributes[:dat_nar]
          root << element
        end

        if attributes.key? :pohlavi
          element = Ox::Element.new('Pohlavi')
          element << attributes[:pohlavi] if attributes[:pohlavi]
          root << element
        end

        if attributes.key? :funkce
          element = Ox::Element.new('Funkce')
          element << attributes[:funkce] if attributes[:funkce]
          root << element
        end

        if attributes.key? :spojeni
          element = Ox::Element.new('Spojeni')
          element << attributes[:spojeni] if attributes[:spojeni]
          root << element
        end

        if attributes.key? :e_mail
          element = Ox::Element.new('EMail')
          element << attributes[:e_mail] if attributes[:e_mail]
          root << element
        end

        if attributes.key? :mail
          element = Ox::Element.new('Mail')
          element << attributes[:mail] if attributes[:mail]
          root << element
        end

        if attributes.key? :mail_datum
          element = Ox::Element.new('MailDatum')
          element << attributes[:mail_datum] if attributes[:mail_datum]
          root << element
        end

        if attributes.key? :pozn
          element = Ox::Element.new('Pozn')
          element << attributes[:pozn] if attributes[:pozn]
          root << element
        end

        if attributes.key? :kod_partn
          element = Ox::Element.new('KodPartn')
          element << attributes[:kod_partn] if attributes[:kod_partn]
          root << element
        end

        if attributes.key? :guid
          element = Ox::Element.new('GUID')
          element << attributes[:guid] if attributes[:guid]
          root << element
        end

        if attributes.key? :jednatel
          element = Ox::Element.new('Jednatel')
          element << attributes[:jednatel] if attributes[:jednatel]
          root << element
        end

        if attributes.key? :adresa
          root << AdresaType.new(attributes[:adresa], 'Adresa').builder
        end

        if attributes.key? :tel
          root << TelefonType.new(attributes[:tel], 'Tel').builder
        end

        if attributes.key? :fax
          root << TelefonType.new(attributes[:fax], 'Fax').builder
        end

        if attributes.key? :mobil
          root << TelefonType.new(attributes[:mobil], 'Mobil').builder
        end

        root
      end
    end
  end
end