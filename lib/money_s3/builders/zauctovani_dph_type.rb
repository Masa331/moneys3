require 'money_s3/builders/base_builder'
require 'money_s3/builders/obdobi_dph'

module MoneyS3
  module Builders
    class ZauctovaniDPHType
      include BaseBuilder

      attr_accessor :zkrat, :typ, :popis, :sd_uc_md, :sd_uc_d, :zd_uc_md, :zd_uc_d, :pozn, :seznam_obdobi_dph

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkrat') << zkrat) if zkrat
        root << (Ox::Element.new('Typ') << typ) if typ
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('SDUcMD') << sd_uc_md) if sd_uc_md
        root << (Ox::Element.new('SDUcD') << sd_uc_d) if sd_uc_d
        root << (Ox::Element.new('ZDUcMD') << zd_uc_md) if zd_uc_md
        root << (Ox::Element.new('ZDUcD') << zd_uc_d) if zd_uc_d
        root << (Ox::Element.new('Pozn') << pozn) if pozn

        if seznam_obdobi_dph
          element = Ox::Element.new('SeznamObdobiDPH')
          seznam_obdobi_dph.each { |i| element << ObdobiDPH.new(i, 'ObdobiDPH').builder }
          root << element
        end

        root
      end
    end
  end
end