module MoneyS3
  module Builders
    class SeznamSkladu < SeznamType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :sklad
          data[:sklad].each { |i| root << Sklad.new('Sklad', i).builder }
        end

        root
      end
    end
  end
end