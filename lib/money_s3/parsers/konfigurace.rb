module MoneyS3
  module Parsers
    class Konfigurace
      include BaseParser
      include Groups::Konfigurace

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        mega.inject(hash) { |memo, r| memo.merge r }
      end
    end
  end
end