module MoneyS3
  module Parsers
    class MsgFaktDpptype < MessageType
      include BaseParser

      def dod_odb
        submodel_at(MsgFirmaType, 'DodOdb')
      end

      def polozka
        array_of_at(MsgFaktPolozType, ['Polozka'])
      end

      def data
        submodel_at(Data2, 'Data')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:dod_odb] = dod_odb.to_h_with_attrs if has? 'DodOdb'
        hash[:polozka] = polozka.map(&:to_h_with_attrs) if has? 'Polozka'
        hash[:data] = data.to_h_with_attrs if has? 'Data'

        hash
        super.merge(hash)
      end
    end
  end
end