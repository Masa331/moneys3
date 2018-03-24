require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class VlajkaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :id_user
          element = Ox::Element.new('IDUser')
          element << attributes[:id_user] if attributes[:id_user]
          root << element
        end

        if attributes.key? :name_user
          element = Ox::Element.new('NameUser')
          element << attributes[:name_user] if attributes[:name_user]
          root << element
        end

        if attributes.key? :id_flag
          element = Ox::Element.new('IDFlag')
          element << attributes[:id_flag] if attributes[:id_flag]
          root << element
        end

        if attributes.key? :title
          element = Ox::Element.new('Title')
          element << attributes[:title] if attributes[:title]
          root << element
        end

        if attributes.key? :enabled
          element = Ox::Element.new('Enabled')
          element << attributes[:enabled] if attributes[:enabled]
          root << element
        end

        if attributes.key? :remark
          element = Ox::Element.new('Remark')
          element << attributes[:remark] if attributes[:remark]
          root << element
        end

        if attributes.key? :rf_width
          element = Ox::Element.new('RFWidth')
          element << attributes[:rf_width] if attributes[:rf_width]
          root << element
        end

        if attributes.key? :rf_height
          element = Ox::Element.new('RFHeight')
          element << attributes[:rf_height] if attributes[:rf_height]
          root << element
        end

        root
      end
    end
  end
end