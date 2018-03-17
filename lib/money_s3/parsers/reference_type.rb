require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class ReferenceType
      include BaseParser

      def id
        array_of_at(String, [:ID])
      end

      def to_h
        { id: id
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end