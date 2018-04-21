module MoneyS3
  module Parsers
    class SeznamClenDPH < SeznamType
      include BaseParser

      def clen_dph
        array_of_at(ClenDPH, ['ClenDPH'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:clen_dph] = clen_dph.map(&:to_h_with_attrs) if has? 'ClenDPH'

        hash
        super.merge(hash)
      end
    end
  end
end