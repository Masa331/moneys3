module MoneyS3
  module Builders
    class AlternativaPrislusenstviType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('PocMJ', data[:poc_mj]) if data.key? :poc_mj
        root << build_element('Poradi', data[:poradi]) if data.key? :poradi
        root << build_element('DruhKomp', data[:druh_komp]) if data.key? :druh_komp
        root << build_element('Symetric', data[:symetric]) if data.key? :symetric
        if data.key? :km_karta
          root << KmKartaType.new('KmKarta', data[:km_karta]).builder
        end
        if data.key? :sklad
          root << SkladType.new('Sklad', data[:sklad]).builder
        end

        root
      end
    end
  end
end