module MoneyS3
  module Builders
    class MsgUcPohybType < MessageType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :data
          root << Data3.new('Data', data[:data]).builder
        end

        root
      end
    end
  end
end