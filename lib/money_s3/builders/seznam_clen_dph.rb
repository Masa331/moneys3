module MoneyS3
  module Builders
    class SeznamClenDPH
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :clen_dph
          data[:clen_dph].each { |i| root << ClenDPH.new('ClenDPH', i).builder }
        end

        root
      end
    end
  end
end