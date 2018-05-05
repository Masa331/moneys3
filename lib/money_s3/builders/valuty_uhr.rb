module MoneyS3
  module Builders
    class ValutyUhr
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :mena
          root << MenaType.new('Mena', data[:mena]).builder
        end
        root << build_element('Castka', data[:castka]) if data.key? :castka

        root
      end
    end
  end
end