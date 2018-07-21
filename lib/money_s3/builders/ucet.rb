module MoneyS3
  module Builders
    class Ucet
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat], data[:zkrat_attributes]) if data.key? :zkrat
        root << build_element('Ucet', data[:ucet], data[:ucet_attributes]) if data.key? :ucet
        root << build_element('BKod', data[:b_kod], data[:b_kod_attributes]) if data.key? :b_kod
        root << build_element('BNazev', data[:b_nazev], data[:b_nazev_attributes]) if data.key? :b_nazev

        root
      end
    end
  end
end