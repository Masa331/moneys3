module MoneyS3
  module Builders
    class Data8
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :mzda
          root << MzdaType.new('Mzda', data[:mzda]).builder
        end

        root
      end
    end
  end
end