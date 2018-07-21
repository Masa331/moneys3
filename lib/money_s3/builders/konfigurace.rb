module MoneyS3
  module Builders
    class Konfigurace
      include ParserCore::BaseBuilder
      include Groups::Konfigurace

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        mega.each do |r|
          r.nodes.each { |n| root << n }
        end

        root
      end
    end
  end
end