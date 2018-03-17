require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class VlajkaType
      include BaseBuilder

      attr_accessor :id_user, :name_user, :id_flag, :title, :enabled, :remark, :rf_width, :rf_height

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('IDUser') << id_user) if id_user
        root << (Ox::Element.new('NameUser') << name_user) if name_user
        root << (Ox::Element.new('IDFlag') << id_flag) if id_flag
        root << (Ox::Element.new('Title') << title) if title
        root << (Ox::Element.new('Enabled') << enabled) if enabled
        root << (Ox::Element.new('Remark') << remark) if remark
        root << (Ox::Element.new('RFWidth') << rf_width) if rf_width
        root << (Ox::Element.new('RFHeight') << rf_height) if rf_height

        root
      end
    end
  end
end