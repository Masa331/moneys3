module MoneyS3
  module Builders
    class MsgBankUcetPokladnaType < MessageType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :data
          root << Data7.new('Data', data[:data]).builder
        end

        root
      end
    end
  end
end