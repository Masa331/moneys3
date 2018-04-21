module MoneyS3
  module Builders
    class MsgKomponentaType < MessageType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :km_karta
          root << MessageType.new('KmKarta', data[:km_karta]).builder
        end
        if data.key? :sklad
          root << MessageType.new('Sklad', data[:sklad]).builder
        end

        root
      end
    end
  end
end