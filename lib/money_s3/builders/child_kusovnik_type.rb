module MoneyS3
  module Builders
    class ChildKusovnikType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Cislo', data[:cislo], data[:cislo_attributes]) if data.key? :cislo
        root << build_element('Typ', data[:typ], data[:typ_attributes]) if data.key? :typ
        root << build_element('CisKarty', data[:cis_karty], data[:cis_karty_attributes]) if data.key? :cis_karty
        root << build_element('Varianta', data[:varianta], data[:varianta_attributes]) if data.key? :varianta
        root << build_element('Rezie', data[:rezie], data[:rezie_attributes]) if data.key? :rezie
        root << build_element('Poradi', data[:poradi], data[:poradi_attributes]) if data.key? :poradi
        root << build_element('Povaha', data[:povaha], data[:povaha_attributes]) if data.key? :povaha
        root << build_element('CilZdroj', data[:cil_zdroj], data[:cil_zdroj_attributes]) if data.key? :cil_zdroj
        root << build_element('PevnaCena', data[:pevna_cena], data[:pevna_cena_attributes]) if data.key? :pevna_cena
        root << build_element('Cena', data[:cena], data[:cena_attributes]) if data.key? :cena
        root << build_element('PocetMJ', data[:pocet_mj], data[:pocet_mj_attributes]) if data.key? :pocet_mj
        root << build_element('PocetMJFix', data[:pocet_mj_fix], data[:pocet_mj_fix_attributes]) if data.key? :pocet_mj_fix
        root << build_element('Kapacita', data[:kapacita], data[:kapacita_attributes]) if data.key? :kapacita
        root << build_element('Time', data[:time], data[:time_attributes]) if data.key? :time
        root << build_element('TimeFix', data[:time_fix], data[:time_fix_attributes]) if data.key? :time_fix
        root << build_element('StartTime', data[:start_time], data[:start_time_attributes]) if data.key? :start_time
        root << build_element('LastTime', data[:last_time], data[:last_time_attributes]) if data.key? :last_time
        root << build_element('StartOper', data[:start_oper], data[:start_oper_attributes]) if data.key? :start_oper
        root << build_element('PodilCeny', data[:podil_ceny], data[:podil_ceny_attributes]) if data.key? :podil_ceny
        if data.key? :sklad
          root << SkladType.new('Sklad', data[:sklad]).builder
        end
        root << build_element('PoziceVykr', data[:pozice_vykr], data[:pozice_vykr_attributes]) if data.key? :pozice_vykr
        root << build_element('Zakazka', data[:zakazka], data[:zakazka_attributes]) if data.key? :zakazka
        root << build_element('Stav', data[:stav], data[:stav_attributes]) if data.key? :stav
        root << build_element('Poznamka', data[:poznamka], data[:poznamka_attributes]) if data.key? :poznamka

        root
      end
    end
  end
end