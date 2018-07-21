module MoneyS3
  module Parsers
    class Konfigurace
      include ParserCore::BaseParser
      include Groups::Konfigurace

      def to_h
        hash = {}
        hash[:attributes] = attributes

        mega.inject(hash) { |memo, r| memo.merge r }
      end
    end
  end
end