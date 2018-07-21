module MoneyS3
  module Parsers
    class EkategorieZasobaType
      include ParserCore::BaseParser

      def id
        at 'ID'
      end

      def id_attributes
        attributes_at 'ID'
      end

      def name
        at 'Name'
      end

      def name_attributes
        attributes_at 'Name'
      end

      def descript
        at 'Descript'
      end

      def descript_attributes
        attributes_at 'Descript'
      end

      def poznamka
        at 'Poznamka'
      end

      def poznamka_attributes
        attributes_at 'Poznamka'
      end

      def changed
        at 'Changed'
      end

      def changed_attributes
        attributes_at 'Changed'
      end

      def public
        at 'Public'
      end

      def public_attributes
        attributes_at 'Public'
      end

      def parent
        submodel_at(EkategorieZasobaType, 'Parent')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:id] = id if has? 'ID'
        hash[:id_attributes] = id_attributes if has? 'ID'
        hash[:name] = name if has? 'Name'
        hash[:name_attributes] = name_attributes if has? 'Name'
        hash[:descript] = descript if has? 'Descript'
        hash[:descript_attributes] = descript_attributes if has? 'Descript'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:poznamka_attributes] = poznamka_attributes if has? 'Poznamka'
        hash[:changed] = changed if has? 'Changed'
        hash[:changed_attributes] = changed_attributes if has? 'Changed'
        hash[:public] = public if has? 'Public'
        hash[:public_attributes] = public_attributes if has? 'Public'
        hash[:parent] = parent.to_h if has? 'Parent'

        hash
      end
    end
  end
end