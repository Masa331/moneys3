require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/cenova_hladina'

module MoneyS3
  module Parsers
    class SeznamCenHladin
      include BaseParser

      def cenova_hladina
        array_of_at(CenovaHladina, [:CenovaHladina])
      end

      def to_h
        hash = {}

        hash[:cenova_hladina] = cenova_hladina.map(&:to_h) if has? :CenovaHladina

        hash
      end
    end
  end
end