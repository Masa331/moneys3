require 'money_s3/builders/base_builder'
require 'money_s3/builders/obdobi_dph'

module MoneyS3
  module Builders
    class ZauctovaniDPHDetype
      include BaseBuilder

      attr_accessor :zkrat, :typ, :popis, :poh_dss, :poh_dzs, :pozn, :seznam_obdobi_dph

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkrat') << zkrat) if zkrat
        root << (Ox::Element.new('Typ') << typ) if typ
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('PohDSS') << poh_dss) if poh_dss
        root << (Ox::Element.new('PohDZS') << poh_dzs) if poh_dzs
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