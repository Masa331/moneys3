require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/child_kusovnik_type'
require 'money_s3/parsers/reference'

module MoneyS3
  module Parsers
    class KomponentaKusovnikType
      include BaseParser

      def child
        submodel_at(ChildKusovnikType, :Child)
      end

      def reference
        submodel_at(Reference, :Reference)
      end

      def to_h
        hash = {}

        hash[:child] = child.to_h if raw.key? :Child
        hash[:reference] = reference.to_h if raw.key? :Reference

        hash
      end
    end
  end
end