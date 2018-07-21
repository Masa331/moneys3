module MoneyS3
  module Parsers
    class Vlajky
      include ParserCore::BaseParser

      def global
        submodel_at(VlajkaType, 'Global')
      end

      def user
        submodel_at(VlajkaType, 'User')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:global] = global.to_h if has? 'Global'
        hash[:user] = user.to_h if has? 'User'

        hash
      end
    end
  end
end