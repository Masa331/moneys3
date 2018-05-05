module MoneyS3
  module Builders
    class MsgBanDoklType < MessageType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :adresa
          root << MessageType.new('Adresa', data[:adresa]).builder
        end
        if data.key? :ucet
          root << MessageType.new('Ucet', data[:ucet]).builder
        end
        if data.key? :uhrada
          data[:uhrada].each { |i| root << MessageType.new('Uhrada', i).builder }
        end
        if data.key? :data
          root << BanDoklType.new('Data', data[:data]).builder
        end

        root
      end
    end
  end
end