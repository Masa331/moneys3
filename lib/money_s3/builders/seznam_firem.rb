module MoneyS3
  module Builders
    class SeznamFirem < SeznamType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :firma
          data[:firma].each { |i| root << Firma.new('Firma', i).builder }
        end

        root
      end
    end
  end
end