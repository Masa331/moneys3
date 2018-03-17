require 'money_s3/builders/base_builder'
require 'money_s3/builders/dalsi_sazba'

module MoneyS3
  module Builders
    class SouhrnDPHType
      include BaseBuilder

      attr_accessor :zaklad0, :zaklad5, :zaklad22, :dph5, :dph22, :seznam_dalsi_sazby

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zaklad0') << zaklad0) if zaklad0
        root << (Ox::Element.new('Zaklad5') << zaklad5) if zaklad5
        root << (Ox::Element.new('Zaklad22') << zaklad22) if zaklad22
        root << (Ox::Element.new('DPH5') << dph5) if dph5
        root << (Ox::Element.new('DPH22') << dph22) if dph22

        if seznam_dalsi_sazby
          element = Ox::Element.new('SeznamDalsiSazby')
          seznam_dalsi_sazby.each { |i| element << DalsiSazba.new(i, 'DalsiSazba').builder }
          root << element
        end

        root
      end
    end
  end
end