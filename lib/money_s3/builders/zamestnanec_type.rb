module MoneyS3
  module Builders
    class ZamestnanecType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('OsCislo', data[:os_cislo], data[:os_cislo_attributes]) if data.key? :os_cislo
        root << build_element('Jmeno', data[:jmeno], data[:jmeno_attributes]) if data.key? :jmeno
        root << build_element('Stredisko', data[:stredisko], data[:stredisko_attributes]) if data.key? :stredisko
        root << build_element('DatNastup', data[:dat_nastup], data[:dat_nastup_attributes]) if data.key? :dat_nastup
        root << build_element('DatOdchod', data[:dat_odchod], data[:dat_odchod_attributes]) if data.key? :dat_odchod
        if data.key? :seznam_mzdovych_obdobi
          element = Ox::Element.new('SeznamMzdovychObdobi')
          data[:seznam_mzdovych_obdobi].each { |i| element << MzdoveObdobiType.new('MzdoveObdobi', i).builder }
          root << element
        end

        root
      end
    end
  end
end