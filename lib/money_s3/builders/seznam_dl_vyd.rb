module MoneyS3
  module Builders
    class SeznamDLVyd
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :dl_vyd
          data[:dl_vyd].each { |i| root << DLVyd.new('DLVyd', i).builder }
        end

        root
      end
    end
  end
end