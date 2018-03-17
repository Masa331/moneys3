require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/ekategorie_zasoba_type'

module MoneyS3
  module Parsers
    class EkategorieZasobaType
      include BaseParser

      def id
        at :ID
      end

      def name
        at :Name
      end

      def descript
        at :Descript
      end

      def poznamka
        at :Poznamka
      end

      def changed
        at :Changed
      end

      def public
        at :Public
      end

      def parent
        submodel_at(EkategorieZasobaType, :Parent)
      end

      def to_h
        { id: id,
          name: name,
          descript: descript,
          poznamka: poznamka,
          changed: changed,
          public: public,
          parent: parent.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end