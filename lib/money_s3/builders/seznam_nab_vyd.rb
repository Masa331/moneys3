module MoneyS3
  module Builders
    class SeznamNabVyd < SeznamType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :nab_vyd
          data[:nab_vyd].each { |i| root << NabVyd.new('NabVyd', i).builder }
        end

        root
      end
    end
  end
end