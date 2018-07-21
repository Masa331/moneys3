module MoneyS3
  module Parsers
    class SeznamDLVyd
      include ParserCore::BaseParser

      def dl_vyd
        array_of_at(DLVyd, ['DLVyd'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:dl_vyd] = dl_vyd.map(&:to_h) if has? 'DLVyd'

        hash
      end
    end
  end
end