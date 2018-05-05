module MoneyS3
  module Parsers
    class SeznamDLVyd < SeznamType
      include ParserCore::BaseParser

      def dl_vyd
        array_of_at(DLVyd, ['DLVyd'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:dl_vyd] = dl_vyd.map(&:to_h_with_attrs) if has? 'DLVyd'

        hash
        super.merge(hash)
      end
    end
  end
end