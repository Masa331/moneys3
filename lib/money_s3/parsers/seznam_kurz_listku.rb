require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/kurz_listek'

module MoneyS3
  module Parsers
    class SeznamKurzListku
      include BaseParser

      def kurz_listek
        array_of_at(KurzListek, ['KurzListek'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:kurz_listek] = kurz_listek.map(&:to_h_with_attrs) if has? 'KurzListek'

        hash
      end
    end
  end
end