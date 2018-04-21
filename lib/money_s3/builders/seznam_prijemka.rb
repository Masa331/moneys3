module MoneyS3
  module Builders
    class SeznamPrijemka < SeznamType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :prijemka
          data[:prijemka].each { |i| root << Prijemka.new('Prijemka', i).builder }
        end

        root
      end
    end
  end
end