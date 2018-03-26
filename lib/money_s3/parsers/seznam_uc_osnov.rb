require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/uc_osnova_type'

module MoneyS3
  module Parsers
    class SeznamUcOsnov
      include BaseParser

      def uc_osnova
        array_of_at(UcOsnovaType, ['UcOsnova'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:uc_osnova] = uc_osnova.map(&:to_h_with_attrs) if has? 'UcOsnova'

        hash
      end
    end
  end
end