require 'money_s3/builders/base_builder'
require 'money_s3/builders/ekategorie_zasoba_type'

module MoneyS3
  module Builders
    class EkategorieZasobaType
      include BaseBuilder

      attr_accessor :id, :name, :descript, :poznamka, :changed, :public, :parent

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('ID') << id) if id
        root << (Ox::Element.new('Name') << name) if name
        root << (Ox::Element.new('Descript') << descript) if descript
        root << (Ox::Element.new('Poznamka') << poznamka) if poznamka
        root << (Ox::Element.new('Changed') << changed) if changed
        root << (Ox::Element.new('Public') << public) if public
        root << EkategorieZasobaType.new(parent, 'Parent').builder if parent

        root
      end
    end
  end
end