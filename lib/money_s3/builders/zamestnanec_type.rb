module MoneyS3
  module Builders
    class ZamestnanecType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('OsCislo', data[:os_cislo]) if data.key? :os_cislo
        root << build_element('Jmeno', data[:jmeno]) if data.key? :jmeno
        root << build_element('Stredisko', data[:stredisko]) if data.key? :stredisko
        root << build_element('DatNastup', data[:dat_nastup]) if data.key? :dat_nastup
        root << build_element('DatOdchod', data[:dat_odchod]) if data.key? :dat_odchod
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