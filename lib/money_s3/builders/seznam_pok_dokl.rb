module MoneyS3
  module Builders
    class SeznamPokDokl < SeznamType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :pok_dokl
          data[:pok_dokl].each { |i| root << PokDokl.new('PokDokl', i).builder }
        end

        root
      end
    end
  end
end