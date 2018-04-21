module MoneyS3
  module Builders
    class MsgPrevodkaType < MessageType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :sklad_pro_pr
          root << MessageType.new('SkladProPr', data[:sklad_pro_pr]).builder
        end
        if data.key? :dod_odb
          root << MsgFirmaType.new('DodOdb', data[:dod_odb]).builder
        end
        if data.key? :konec_prij
          root << MsgFirmaType.new('KonecPrij', data[:konec_prij]).builder
        end
        if data.key? :polozka
          data[:polozka].each { |i| root << MsgPolozType.new('Polozka', i).builder }
        end
        if data.key? :data
          root << SklDoklType.new('Data', data[:data]).builder
        end

        root
      end
    end
  end
end