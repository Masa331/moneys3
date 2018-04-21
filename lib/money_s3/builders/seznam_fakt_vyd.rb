module MoneyS3
  module Builders
    class SeznamFaktVyd < SeznamType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :fakt_vyd
          data[:fakt_vyd].each { |i| root << FaktVyd.new('FaktVyd', i).builder }
        end

        root
      end
    end
  end
end