module MoneyS3
  module Builders
    class SeznamPredkontaciDE
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :predkontace_de
          data[:predkontace_de].each { |i| root << PredkontaceDEType.new('PredkontaceDE', i).builder }
        end

        root
      end
    end
  end
end