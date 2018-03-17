require 'money_s3/builders/base_builder'
require 'money_s3/builders/mzdove_obdobi_type'

module MoneyS3
  module Builders
    class ZamestnanecType
      include BaseBuilder

      attr_accessor :os_cislo, :jmeno, :stredisko, :dat_nastup, :dat_odchod, :seznam_mzdovych_obdobi

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('OsCislo') << os_cislo) if os_cislo
        root << (Ox::Element.new('Jmeno') << jmeno) if jmeno
        root << (Ox::Element.new('Stredisko') << stredisko) if stredisko
        root << (Ox::Element.new('DatNastup') << dat_nastup) if dat_nastup
        root << (Ox::Element.new('DatOdchod') << dat_odchod) if dat_odchod

        if seznam_mzdovych_obdobi
          element = Ox::Element.new('SeznamMzdovychObdobi')
          seznam_mzdovych_obdobi.each { |i| element << MzdoveObdobiType.new(i, 'MzdoveObdobi').builder }
          root << element
        end

        root
      end
    end
  end
end