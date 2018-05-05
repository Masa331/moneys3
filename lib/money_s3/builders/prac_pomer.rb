module MoneyS3
  module Builders
    class PracPomer
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('ELDPKod', data[:eldp_kod]) if data.key? :eldp_kod
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn

        root
      end
    end
  end
end