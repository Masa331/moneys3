module MoneyS3
  module Builders
    class SeznamDLVyd < SeznamType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :dl_vyd
          data[:dl_vyd].each { |i| root << DLVyd.new('DLVyd', i).builder }
        end

        root
      end
    end
  end
end