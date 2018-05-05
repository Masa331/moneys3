module MoneyS3
  module Parsers
    class DefiniceCeny
      include ParserCore::BaseParser
      include Groups::DefiniceCeny

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        mega.inject(hash) { |memo, r| memo.merge r }
      end
    end
  end
end