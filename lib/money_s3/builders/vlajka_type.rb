require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class VlajkaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('IDUser', data[:id_user]) if data.key? :id_user
        root << build_element('NameUser', data[:name_user]) if data.key? :name_user
        root << build_element('IDFlag', data[:id_flag]) if data.key? :id_flag
        root << build_element('Title', data[:title]) if data.key? :title
        root << build_element('Enabled', data[:enabled]) if data.key? :enabled
        root << build_element('Remark', data[:remark]) if data.key? :remark
        root << build_element('RFWidth', data[:rf_width]) if data.key? :rf_width
        root << build_element('RFHeight', data[:rf_height]) if data.key? :rf_height

        root
      end
    end
  end
end