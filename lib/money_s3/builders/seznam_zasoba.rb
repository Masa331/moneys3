module MoneyS3
  module Builders
    class SeznamZasoba < SeznamType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :zasoba
          data[:zasoba].each { |i| root << Zasoba.new('Zasoba', i).builder }
        end

        root
      end
    end
  end
end