module MoneyS3
  module Builders
    class SeznamObjPrij < SeznamType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :obj_prij
          data[:obj_prij].each { |i| root << ObjPrij.new('ObjPrij', i).builder }
        end

        root
      end
    end
  end
end