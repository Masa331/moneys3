module MoneyS3
  module Builders
    class SeznamObjPrij
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :obj_prij
          data[:obj_prij].each { |i| root << ObjPrij.new('ObjPrij', i).builder }
        end

        root
      end
    end
  end
end