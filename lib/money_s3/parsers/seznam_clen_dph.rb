module MoneyS3
  module Parsers
    class SeznamClenDPH
      include ParserCore::BaseParser

      def clen_dph
        array_of_at(ClenDPH, ['ClenDPH'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:clen_dph] = clen_dph.map(&:to_h) if has? 'ClenDPH'

        hash
      end
    end
  end
end