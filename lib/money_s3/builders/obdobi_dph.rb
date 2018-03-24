require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class ObdobiDPH
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :datum_od
          element = Ox::Element.new('DatumOd')
          element << attributes[:datum_od] if attributes[:datum_od]
          root << element
        end

        if attributes.key? :uc_md_1
          element = Ox::Element.new('UcMD_1')
          element << attributes[:uc_md_1] if attributes[:uc_md_1]
          root << element
        end

        if attributes.key? :uc_d_1
          element = Ox::Element.new('UcD_1')
          element << attributes[:uc_d_1] if attributes[:uc_d_1]
          root << element
        end

        if attributes.key? :uc_md_2
          element = Ox::Element.new('UcMD_2')
          element << attributes[:uc_md_2] if attributes[:uc_md_2]
          root << element
        end

        if attributes.key? :uc_d_2
          element = Ox::Element.new('UcD_2')
          element << attributes[:uc_d_2] if attributes[:uc_d_2]
          root << element
        end

        if attributes.key? :uc_md_3
          element = Ox::Element.new('UcMD_3')
          element << attributes[:uc_md_3] if attributes[:uc_md_3]
          root << element
        end

        if attributes.key? :uc_d_3
          element = Ox::Element.new('UcD_3')
          element << attributes[:uc_d_3] if attributes[:uc_d_3]
          root << element
        end

        if attributes.key? :uc_md_4
          element = Ox::Element.new('UcMD_4')
          element << attributes[:uc_md_4] if attributes[:uc_md_4]
          root << element
        end

        if attributes.key? :uc_d_4
          element = Ox::Element.new('UcD_4')
          element << attributes[:uc_d_4] if attributes[:uc_d_4]
          root << element
        end

        if attributes.key? :uc_md_5
          element = Ox::Element.new('UcMD_5')
          element << attributes[:uc_md_5] if attributes[:uc_md_5]
          root << element
        end

        if attributes.key? :uc_d_5
          element = Ox::Element.new('UcD_5')
          element << attributes[:uc_d_5] if attributes[:uc_d_5]
          root << element
        end

        if attributes.key? :uc_md_6
          element = Ox::Element.new('UcMD_6')
          element << attributes[:uc_md_6] if attributes[:uc_md_6]
          root << element
        end

        if attributes.key? :uc_d_6
          element = Ox::Element.new('UcD_6')
          element << attributes[:uc_d_6] if attributes[:uc_d_6]
          root << element
        end

        root
      end
    end
  end
end