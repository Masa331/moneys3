module MoneyS3
  module Builders
    class SeznamPoptVyd
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :popt_vyd
          data[:popt_vyd].each { |i| root << PoptVyd.new('PoptVyd', i).builder }
        end

        root
      end
    end
  end
end