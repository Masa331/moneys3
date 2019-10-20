module MoneyS3
  module Builders
    class SeznamUcOsnov
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :uc_osnova
          data[:uc_osnova].each { |i| root << UcOsnovaType.new('UcOsnova', i).builder }
        end

        root
      end
    end
  end
end