module MoneyS3
  module Builders
    class SeznamMezd < SeznamType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :mzda
          data[:mzda].each { |i| root << MzdaType.new('Mzda', i).builder }
        end

        root
      end
    end
  end
end