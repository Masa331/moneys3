module MoneyS3
  module Builders
    class Data4
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :predkontace_de
          root << PredkontaceDEType.new('PredkontaceDE', data[:predkontace_de]).builder
        end

        root
      end
    end
  end
end