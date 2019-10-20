module MoneyS3
  module Builders
    class SeznamStredisek
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :stredisko
          data[:stredisko].each { |i| root << Stredisko.new('Stredisko', i).builder }
        end

        root
      end
    end
  end
end