require 'money_s3/builders/base_builder'
require 'money_s3/builders/mzdove_obdobi_type'

module MoneyS3
  module Builders
    class ZamestnanecType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :os_cislo
          element = Ox::Element.new('OsCislo')
          element << attributes[:os_cislo] if attributes[:os_cislo]
          root << element
        end

        if attributes.key? :jmeno
          element = Ox::Element.new('Jmeno')
          element << attributes[:jmeno] if attributes[:jmeno]
          root << element
        end

        if attributes.key? :stredisko
          element = Ox::Element.new('Stredisko')
          element << attributes[:stredisko] if attributes[:stredisko]
          root << element
        end

        if attributes.key? :dat_nastup
          element = Ox::Element.new('DatNastup')
          element << attributes[:dat_nastup] if attributes[:dat_nastup]
          root << element
        end

        if attributes.key? :dat_odchod
          element = Ox::Element.new('DatOdchod')
          element << attributes[:dat_odchod] if attributes[:dat_odchod]
          root << element
        end

        if attributes.key? :seznam_mzdovych_obdobi
          element = Ox::Element.new('SeznamMzdovychObdobi')
          attributes[:seznam_mzdovych_obdobi].each { |i| element << MzdoveObdobiType.new(i, 'MzdoveObdobi').builder }
          root << element
        end

        root
      end
    end
  end
end