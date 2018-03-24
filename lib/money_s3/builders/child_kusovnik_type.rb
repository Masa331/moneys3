require 'money_s3/builders/base_builder'
require 'money_s3/builders/sklad_type'

module MoneyS3
  module Builders
    class ChildKusovnikType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :cislo
          element = Ox::Element.new('Cislo')
          element << attributes[:cislo] if attributes[:cislo]
          root << element
        end

        if attributes.key? :typ
          element = Ox::Element.new('Typ')
          element << attributes[:typ] if attributes[:typ]
          root << element
        end

        if attributes.key? :cis_karty
          element = Ox::Element.new('CisKarty')
          element << attributes[:cis_karty] if attributes[:cis_karty]
          root << element
        end

        if attributes.key? :varianta
          element = Ox::Element.new('Varianta')
          element << attributes[:varianta] if attributes[:varianta]
          root << element
        end

        if attributes.key? :rezie
          element = Ox::Element.new('Rezie')
          element << attributes[:rezie] if attributes[:rezie]
          root << element
        end

        if attributes.key? :poradi
          element = Ox::Element.new('Poradi')
          element << attributes[:poradi] if attributes[:poradi]
          root << element
        end

        if attributes.key? :povaha
          element = Ox::Element.new('Povaha')
          element << attributes[:povaha] if attributes[:povaha]
          root << element
        end

        if attributes.key? :cil_zdroj
          element = Ox::Element.new('CilZdroj')
          element << attributes[:cil_zdroj] if attributes[:cil_zdroj]
          root << element
        end

        if attributes.key? :pevna_cena
          element = Ox::Element.new('PevnaCena')
          element << attributes[:pevna_cena] if attributes[:pevna_cena]
          root << element
        end

        if attributes.key? :cena
          element = Ox::Element.new('Cena')
          element << attributes[:cena] if attributes[:cena]
          root << element
        end

        if attributes.key? :pocet_mj
          element = Ox::Element.new('PocetMJ')
          element << attributes[:pocet_mj] if attributes[:pocet_mj]
          root << element
        end

        if attributes.key? :pocet_mj_fix
          element = Ox::Element.new('PocetMJFix')
          element << attributes[:pocet_mj_fix] if attributes[:pocet_mj_fix]
          root << element
        end

        if attributes.key? :kapacita
          element = Ox::Element.new('Kapacita')
          element << attributes[:kapacita] if attributes[:kapacita]
          root << element
        end

        if attributes.key? :time
          element = Ox::Element.new('Time')
          element << attributes[:time] if attributes[:time]
          root << element
        end

        if attributes.key? :time_fix
          element = Ox::Element.new('TimeFix')
          element << attributes[:time_fix] if attributes[:time_fix]
          root << element
        end

        if attributes.key? :start_time
          element = Ox::Element.new('StartTime')
          element << attributes[:start_time] if attributes[:start_time]
          root << element
        end

        if attributes.key? :last_time
          element = Ox::Element.new('LastTime')
          element << attributes[:last_time] if attributes[:last_time]
          root << element
        end

        if attributes.key? :start_oper
          element = Ox::Element.new('StartOper')
          element << attributes[:start_oper] if attributes[:start_oper]
          root << element
        end

        if attributes.key? :podil_ceny
          element = Ox::Element.new('PodilCeny')
          element << attributes[:podil_ceny] if attributes[:podil_ceny]
          root << element
        end

        if attributes.key? :pozice_vykr
          element = Ox::Element.new('PoziceVykr')
          element << attributes[:pozice_vykr] if attributes[:pozice_vykr]
          root << element
        end

        if attributes.key? :zakazka
          element = Ox::Element.new('Zakazka')
          element << attributes[:zakazka] if attributes[:zakazka]
          root << element
        end

        if attributes.key? :stav
          element = Ox::Element.new('Stav')
          element << attributes[:stav] if attributes[:stav]
          root << element
        end

        if attributes.key? :poznamka
          element = Ox::Element.new('Poznamka')
          element << attributes[:poznamka] if attributes[:poznamka]
          root << element
        end

        if attributes.key? :sklad
          root << SkladType.new(attributes[:sklad], 'Sklad').builder
        end

        root
      end
    end
  end
end