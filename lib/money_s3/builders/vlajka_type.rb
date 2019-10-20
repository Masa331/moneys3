module MoneyS3
  module Builders
    class VlajkaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('IDUser', data[:id_user], data[:id_user_attributes]) if data.key? :id_user
        root << build_element('NameUser', data[:name_user], data[:name_user_attributes]) if data.key? :name_user
        root << build_element('IDFlag', data[:id_flag], data[:id_flag_attributes]) if data.key? :id_flag
        root << build_element('Title', data[:title], data[:title_attributes]) if data.key? :title
        root << build_element('Enabled', data[:enabled], data[:enabled_attributes]) if data.key? :enabled
        root << build_element('Remark', data[:remark], data[:remark_attributes]) if data.key? :remark
        root << build_element('RFWidth', data[:rf_width], data[:rf_width_attributes]) if data.key? :rf_width
        root << build_element('RFHeight', data[:rf_height], data[:rf_height_attributes]) if data.key? :rf_height

        root
      end
    end
  end
end