module MoneyS3
  module Builders
    class BankSpojeniType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Ucet', data[:ucet], data[:ucet_attributes]) if data.key? :ucet
        root << build_element('KodBanky', data[:kod_banky], data[:kod_banky_attributes]) if data.key? :kod_banky
        root << build_element('Mena', data[:mena], data[:mena_attributes]) if data.key? :mena
        root << build_element('Ucel', data[:ucel], data[:ucel_attributes]) if data.key? :ucel

        root
      end
    end
  end
end