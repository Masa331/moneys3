module MoneyS3
  module Builders
    class SeznamNabVyd
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :nab_vyd
          data[:nab_vyd].each { |i| root << NabVyd.new('NabVyd', i).builder }
        end

        root
      end
    end
  end
end