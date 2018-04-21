module MoneyS3
  module Parsers
    class KomponentaKusovnikType
      include BaseParser

      def child
        submodel_at(ChildKusovnikType, 'Child')
      end

      def reference
        submodel_at(Reference, 'Reference')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:child] = child.to_h_with_attrs if has? 'Child'
        hash[:reference] = reference.to_h_with_attrs if has? 'Reference'

        hash
      end
    end
  end
end