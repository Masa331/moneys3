module MoneyS3
  module Parsers
    class Vlajky
      include BaseParser

      def global
        submodel_at(VlajkaType, 'Global')
      end

      def user
        submodel_at(VlajkaType, 'User')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:global] = global.to_h_with_attrs if has? 'Global'
        hash[:user] = user.to_h_with_attrs if has? 'User'

        hash
      end
    end
  end
end