module MoneyS3
  module Builders
    class SeznamStredisek < SeznamType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :stredisko
          data[:stredisko].each { |i| root << Stredisko.new('Stredisko', i).builder }
        end

        root
      end
    end
  end
end