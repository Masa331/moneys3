require 'money_s3/builders/base_builder'
require 'money_s3/builders/adresa_type'
require 'money_s3/builders/telefon_type'

module MoneyS3
  module Builders
    class OsobaType
      include BaseBuilder

      attr_accessor :osloveni, :titul_pred, :titul_za, :jmeno, :prijmeni, :dat_nar, :pohlavi, :funkce, :spojeni, :e_mail, :mail, :mail_datum, :pozn, :kod_partn, :guid, :jednatel, :adresa, :tel, :fax, :mobil

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Osloveni') << osloveni) if osloveni
        root << (Ox::Element.new('TitulPred') << titul_pred) if titul_pred
        root << (Ox::Element.new('TitulZa') << titul_za) if titul_za
        root << (Ox::Element.new('Jmeno') << jmeno) if jmeno
        root << (Ox::Element.new('Prijmeni') << prijmeni) if prijmeni
        root << (Ox::Element.new('DatNar') << dat_nar) if dat_nar
        root << (Ox::Element.new('Pohlavi') << pohlavi) if pohlavi
        root << (Ox::Element.new('Funkce') << funkce) if funkce
        root << (Ox::Element.new('Spojeni') << spojeni) if spojeni
        root << (Ox::Element.new('EMail') << e_mail) if e_mail
        root << (Ox::Element.new('Mail') << mail) if mail
        root << (Ox::Element.new('MailDatum') << mail_datum) if mail_datum
        root << (Ox::Element.new('Pozn') << pozn) if pozn
        root << (Ox::Element.new('KodPartn') << kod_partn) if kod_partn
        root << (Ox::Element.new('GUID') << guid) if guid
        root << (Ox::Element.new('Jednatel') << jednatel) if jednatel
        root << AdresaType.new(adresa, 'Adresa').builder if adresa
        root << TelefonType.new(tel, 'Tel').builder if tel
        root << TelefonType.new(fax, 'Fax').builder if fax
        root << TelefonType.new(mobil, 'Mobil').builder if mobil

        root
      end
    end
  end
end