module MoneyS3
  module Builders
    class PracPomer
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Zkrat', data[:zkrat], data[:zkrat_attributes]) if data.key? :zkrat
        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('ELDPKod', data[:eldp_kod], data[:eldp_kod_attributes]) if data.key? :eldp_kod
        root << build_element('Pozn', data[:pozn], data[:pozn_attributes]) if data.key? :pozn

        root
      end
    end
  end
end