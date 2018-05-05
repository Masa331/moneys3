module MoneyS3
  module Builders
    class SeznamIntDokl < SeznamType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :int_dokl
          data[:int_dokl].each { |i| root << IntDokl.new('IntDokl', i).builder }
        end

        root
      end
    end
  end
end