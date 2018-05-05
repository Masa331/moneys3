module MoneyS3
  module Builders
    class SeznamInvDokl < SeznamType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :inv_doklad
          data[:inv_doklad].each { |i| root << InvDoklType.new('InvDoklad', i).builder }
        end

        root
      end
    end
  end
end