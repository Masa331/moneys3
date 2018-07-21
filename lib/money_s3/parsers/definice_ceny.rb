module MoneyS3
  module Parsers
    class DefiniceCeny
      include ParserCore::BaseParser
      include Groups::DefiniceCeny

      def to_h
        hash = {}
        hash[:attributes] = attributes

        mega.inject(hash) { |memo, r| memo.merge r }
      end
    end
  end
end