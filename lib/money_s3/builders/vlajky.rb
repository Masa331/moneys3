module MoneyS3
  module Builders
    class Vlajky
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :global
          root << VlajkaType.new('Global', data[:global]).builder
        end
        if data.key? :user
          root << VlajkaType.new('User', data[:user]).builder
        end

        root
      end
    end
  end
end