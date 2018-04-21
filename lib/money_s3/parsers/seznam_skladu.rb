module MoneyS3
  module Parsers
    class SeznamSkladu < SeznamType
      include BaseParser

      def sklad
        array_of_at(Sklad, ['Sklad'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:sklad] = sklad.map(&:to_h_with_attrs) if has? 'Sklad'

        hash
        super.merge(hash)
      end
    end
  end
end