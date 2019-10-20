module MoneyS3
  module Builders
    class SeznamFaktVyd
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :fakt_vyd
          data[:fakt_vyd].each { |i| root << FaktVyd.new('FaktVyd', i).builder }
        end

        root
      end
    end
  end
end