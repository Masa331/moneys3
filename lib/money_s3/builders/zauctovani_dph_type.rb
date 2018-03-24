require 'money_s3/builders/base_builder'
require 'money_s3/builders/obdobi_dph'

module MoneyS3
  module Builders
    class ZauctovaniDPHType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zkrat
          element = Ox::Element.new('Zkrat')
          element << attributes[:zkrat] if attributes[:zkrat]
          root << element
        end

        if attributes.key? :typ
          element = Ox::Element.new('Typ')
          element << attributes[:typ] if attributes[:typ]
          root << element
        end

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :sd_uc_md
          element = Ox::Element.new('SDUcMD')
          element << attributes[:sd_uc_md] if attributes[:sd_uc_md]
          root << element
        end

        if attributes.key? :sd_uc_d
          element = Ox::Element.new('SDUcD')
          element << attributes[:sd_uc_d] if attributes[:sd_uc_d]
          root << element
        end

        if attributes.key? :zd_uc_md
          element = Ox::Element.new('ZDUcMD')
          element << attributes[:zd_uc_md] if attributes[:zd_uc_md]
          root << element
        end

        if attributes.key? :zd_uc_d
          element = Ox::Element.new('ZDUcD')
          element << attributes[:zd_uc_d] if attributes[:zd_uc_d]
          root << element
        end

        if attributes.key? :pozn
          element = Ox::Element.new('Pozn')
          element << attributes[:pozn] if attributes[:pozn]
          root << element
        end

        if attributes.key? :seznam_obdobi_dph
          element = Ox::Element.new('SeznamObdobiDPH')
          attributes[:seznam_obdobi_dph].each { |i| element << ObdobiDPH.new(i, 'ObdobiDPH').builder }
          root << element
        end

        root
      end
    end
  end
end