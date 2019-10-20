module MoneyS3
  module Builders
    class SeznamPredkontaci
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :predkontace
          data[:predkontace].each { |i| root << Predkontace.new('Predkontace', i).builder }
        end

        root
      end
    end
  end
end