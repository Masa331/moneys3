require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class MenaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Kod', data[:kod]) if data.key? :kod
        root << build_element('Mnozstvi', data[:mnozstvi]) if data.key? :mnozstvi
        root << build_element('Kurs', data[:kurs]) if data.key? :kurs

        root
      end
    end
  end
end