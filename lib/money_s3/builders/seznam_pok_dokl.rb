module MoneyS3
  module Builders
    class SeznamPokDokl
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :pok_dokl
          data[:pok_dokl].each { |i| root << PokDokl.new('PokDokl', i).builder }
        end

        root
      end
    end
  end
end