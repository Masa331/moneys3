module MoneyS3
  module Builders
    class DefiniceCeny
      include ParserCore::BaseBuilder
      include Groups::DefiniceCeny

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        mega.each do |r|
          r.nodes.each { |n| root << n }
        end

        root
      end
    end
  end
end