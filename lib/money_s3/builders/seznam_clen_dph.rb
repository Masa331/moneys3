module MoneyS3
  module Builders
    class SeznamClenDPH
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :clen_dph
          data[:clen_dph].each { |i| root << ClenDPH.new('ClenDPH', i).builder }
        end

        root
      end
    end
  end
end