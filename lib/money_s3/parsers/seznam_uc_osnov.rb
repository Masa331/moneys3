module MoneyS3
  module Parsers
    class SeznamUcOsnov < SeznamType
      include ParserCore::BaseParser

      def uc_osnova
        array_of_at(UcOsnovaType, ['UcOsnova'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:uc_osnova] = uc_osnova.map(&:to_h_with_attrs) if has? 'UcOsnova'

        hash
        super.merge(hash)
      end
    end
  end
end