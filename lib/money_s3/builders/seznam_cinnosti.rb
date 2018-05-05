module MoneyS3
  module Builders
    class SeznamCinnosti < SeznamType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :cinnost
          data[:cinnost].each { |i| root << Cinnost.new('Cinnost', i).builder }
        end

        root
      end
    end
  end
end