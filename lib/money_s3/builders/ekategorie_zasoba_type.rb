require 'money_s3/builders/base_builder'
require 'money_s3/builders/ekategorie_zasoba_type'

module MoneyS3
  module Builders
    class EkategorieZasobaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('ID', data[:id]) if data.key? :id
        root << build_element('Name', data[:name]) if data.key? :name
        root << build_element('Descript', data[:descript]) if data.key? :descript
        root << build_element('Poznamka', data[:poznamka]) if data.key? :poznamka
        root << build_element('Changed', data[:changed]) if data.key? :changed
        root << build_element('Public', data[:public]) if data.key? :public

        if data.key? :parent
          root << EkategorieZasobaType.new('Parent', data[:parent]).builder
        end

        root
      end
    end
  end
end