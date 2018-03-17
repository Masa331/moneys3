require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/predkontace_de_type'

module MoneyS3
  module Parsers
    class SeznamPredkontaciDE
      include BaseParser

      def predkontace_de
        array_of_at(PredkontaceDEType, [:PredkontaceDE])
      end

      def to_h
        { predkontace_de: predkontace_de.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end