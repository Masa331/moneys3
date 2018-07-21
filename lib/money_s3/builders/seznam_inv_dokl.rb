module MoneyS3
  module Builders
    class SeznamInvDokl
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :inv_doklad
          data[:inv_doklad].each { |i| root << InvDoklType.new('InvDoklad', i).builder }
        end

        root
      end
    end
  end
end