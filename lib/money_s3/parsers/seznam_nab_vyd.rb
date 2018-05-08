module MoneyS3
  module Parsers
    class SeznamNabVyd
      include ParserCore::BaseParser

      def nab_vyd
        array_of_at(NabVyd, ['NabVyd'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:nab_vyd] = nab_vyd.map(&:to_h_with_attrs) if has? 'NabVyd'

        hash
      end
    end
  end
end