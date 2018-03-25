require 'money_s3/builders/base_builder'
require 'money_s3/builders/adresa_type'
require 'money_s3/builders/telefon_type'

module MoneyS3
  module Builders
    class OsobaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Osloveni', data[:osloveni]) if data.key? :osloveni
        root << build_element('TitulPred', data[:titul_pred]) if data.key? :titul_pred
        root << build_element('TitulZa', data[:titul_za]) if data.key? :titul_za
        root << build_element('Jmeno', data[:jmeno]) if data.key? :jmeno
        root << build_element('Prijmeni', data[:prijmeni]) if data.key? :prijmeni
        root << build_element('DatNar', data[:dat_nar]) if data.key? :dat_nar
        root << build_element('Pohlavi', data[:pohlavi]) if data.key? :pohlavi
        root << build_element('Funkce', data[:funkce]) if data.key? :funkce
        root << build_element('Spojeni', data[:spojeni]) if data.key? :spojeni
        root << build_element('EMail', data[:e_mail]) if data.key? :e_mail
        root << build_element('Mail', data[:mail]) if data.key? :mail
        root << build_element('MailDatum', data[:mail_datum]) if data.key? :mail_datum
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn
        root << build_element('KodPartn', data[:kod_partn]) if data.key? :kod_partn
        root << build_element('GUID', data[:guid]) if data.key? :guid
        root << build_element('Jednatel', data[:jednatel]) if data.key? :jednatel

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

        root
      end
    end
  end
end