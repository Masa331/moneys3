module MoneyS3
  module Builders
    class Reference
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :typ_kusovnik
          root << KusovnikType.new('TypKusovnik', data[:typ_kusovnik]).builder
        end
        if data.key? :vzor
          root << VzorKomponentaType.new('Vzor', data[:vzor]).builder
        end

        root
      end
    end
  end
end