module MoneyS3
  module Builders
    class ChildKusovnikType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Cislo', data[:cislo]) if data.key? :cislo
        root << build_element('Typ', data[:typ]) if data.key? :typ
        root << build_element('CisKarty', data[:cis_karty]) if data.key? :cis_karty
        root << build_element('Varianta', data[:varianta]) if data.key? :varianta
        root << build_element('Rezie', data[:rezie]) if data.key? :rezie
        root << build_element('Poradi', data[:poradi]) if data.key? :poradi
        root << build_element('Povaha', data[:povaha]) if data.key? :povaha
        root << build_element('CilZdroj', data[:cil_zdroj]) if data.key? :cil_zdroj
        root << build_element('PevnaCena', data[:pevna_cena]) if data.key? :pevna_cena
        root << build_element('Cena', data[:cena]) if data.key? :cena
        root << build_element('PocetMJ', data[:pocet_mj]) if data.key? :pocet_mj
        root << build_element('PocetMJFix', data[:pocet_mj_fix]) if data.key? :pocet_mj_fix
        root << build_element('Kapacita', data[:kapacita]) if data.key? :kapacita
        root << build_element('Time', data[:time]) if data.key? :time
        root << build_element('TimeFix', data[:time_fix]) if data.key? :time_fix
        root << build_element('StartTime', data[:start_time]) if data.key? :start_time
        root << build_element('LastTime', data[:last_time]) if data.key? :last_time
        root << build_element('StartOper', data[:start_oper]) if data.key? :start_oper
        root << build_element('PodilCeny', data[:podil_ceny]) if data.key? :podil_ceny
        if data.key? :sklad
          root << SkladType.new('Sklad', data[:sklad]).builder
        end
        root << build_element('PoziceVykr', data[:pozice_vykr]) if data.key? :pozice_vykr
        root << build_element('Zakazka', data[:zakazka]) if data.key? :zakazka
        root << build_element('Stav', data[:stav]) if data.key? :stav
        root << build_element('Poznamka', data[:poznamka]) if data.key? :poznamka

        root
      end
    end
  end
end