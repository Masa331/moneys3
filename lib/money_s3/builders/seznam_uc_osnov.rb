module MoneyS3
  module Builders
    class SeznamUcOsnov
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :uc_osnova
          data[:uc_osnova].each { |i| root << UcOsnovaType.new('UcOsnova', i).builder }
        end

        root
      end
    end
  end
end