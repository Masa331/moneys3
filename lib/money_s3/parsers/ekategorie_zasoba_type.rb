module MoneyS3
  module Parsers
    class EkategorieZasobaType
      include BaseParser

      def id
        at 'ID'
      end

      def name
        at 'Name'
      end

      def descript
        at 'Descript'
      end

      def poznamka
        at 'Poznamka'
      end

      def changed
        at 'Changed'
      end

      def public
        at 'Public'
      end

      def parent
        submodel_at(EkategorieZasobaType, 'Parent')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:id] = id if has? 'ID'
        hash[:name] = name if has? 'Name'
        hash[:descript] = descript if has? 'Descript'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:changed] = changed if has? 'Changed'
        hash[:public] = public if has? 'Public'
        hash[:parent] = parent.to_h_with_attrs if has? 'Parent'

        hash
      end
    end
  end
end