module MoneyS3
  module Builders
    class Ucet
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('Ucet', data[:ucet]) if data.key? :ucet
        root << build_element('BKod', data[:b_kod]) if data.key? :b_kod
        root << build_element('BNazev', data[:b_nazev]) if data.key? :b_nazev

        root
      end
    end
  end
end