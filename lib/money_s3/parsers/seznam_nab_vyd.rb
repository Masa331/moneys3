module MoneyS3
  module Parsers
    class SeznamNabVyd < SeznamType
      include BaseParser

      def nab_vyd
        array_of_at(NabVyd, ['NabVyd'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:nab_vyd] = nab_vyd.map(&:to_h_with_attrs) if has? 'NabVyd'

        hash
        super.merge(hash)
      end
    end
  end
end