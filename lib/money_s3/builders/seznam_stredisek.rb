module MoneyS3
  module Builders
    class SeznamStredisek
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :stredisko
          data[:stredisko].each { |i| root << Stredisko.new('Stredisko', i).builder }
        end

        root
      end
    end
  end
end