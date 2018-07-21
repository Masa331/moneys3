module MoneyS3
  module Builders
    class AlternativaPrislusenstviType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('PocMJ', data[:poc_mj], data[:poc_mj_attributes]) if data.key? :poc_mj
        root << build_element('Poradi', data[:poradi], data[:poradi_attributes]) if data.key? :poradi
        root << build_element('DruhKomp', data[:druh_komp], data[:druh_komp_attributes]) if data.key? :druh_komp
        root << build_element('Symetric', data[:symetric], data[:symetric_attributes]) if data.key? :symetric
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