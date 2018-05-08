module MoneyS3
  module Parsers
    class SeznamClenDPH
      include ParserCore::BaseParser

      def clen_dph
        array_of_at(ClenDPH, ['ClenDPH'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:clen_dph] = clen_dph.map(&:to_h_with_attrs) if has? 'ClenDPH'

        hash
      end
    end
  end
end