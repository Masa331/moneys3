module MoneyS3
  module Parsers
    class SeznamUcOsnov
      include ParserCore::BaseParser

      def uc_osnova
        array_of_at(UcOsnovaType, ['UcOsnova'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:uc_osnova] = uc_osnova.map(&:to_h) if has? 'UcOsnova'

        hash
      end
    end
  end
end