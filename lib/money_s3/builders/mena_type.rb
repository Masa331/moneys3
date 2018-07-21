module MoneyS3
  module Builders
    class MenaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Kod', data[:kod], data[:kod_attributes]) if data.key? :kod
        root << build_element('Mnozstvi', data[:mnozstvi], data[:mnozstvi_attributes]) if data.key? :mnozstvi
        root << build_element('Kurs', data[:kurs], data[:kurs_attributes]) if data.key? :kurs

        root
      end
    end
  end
end