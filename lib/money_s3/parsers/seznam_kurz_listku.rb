module MoneyS3
  module Parsers
    class SeznamKurzListku
      include ParserCore::BaseParser

      def kurz_listek
        array_of_at(KurzListek, ['KurzListek'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:kurz_listek] = kurz_listek.map(&:to_h) if has? 'KurzListek'

        hash
      end
    end
  end
end