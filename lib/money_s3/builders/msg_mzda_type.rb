module MoneyS3
  module Builders
    class MsgMzdaType < MessageType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :nepritomnost
          data[:nepritomnost].each { |i| root << MessageType.new('Nepritomnost', i).builder }
        end
        if data.key? :data
          root << Data8.new('Data', data[:data]).builder
        end

        root
      end
    end
  end
end