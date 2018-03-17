require 'money_s3/builders/base_builder'
require 'money_s3/builders/sklad_type'

module MoneyS3
  module Builders
    class ChildKusovnikType
      include BaseBuilder

      attr_accessor :cislo, :typ, :cis_karty, :varianta, :rezie, :poradi, :povaha, :cil_zdroj, :pevna_cena, :cena, :pocet_mj, :pocet_mj_fix, :kapacita, :time, :time_fix, :start_time, :last_time, :start_oper, :podil_ceny, :pozice_vykr, :zakazka, :stav, :poznamka, :sklad

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Cislo') << cislo) if cislo
        root << (Ox::Element.new('Typ') << typ) if typ
        root << (Ox::Element.new('CisKarty') << cis_karty) if cis_karty
        root << (Ox::Element.new('Varianta') << varianta) if varianta
        root << (Ox::Element.new('Rezie') << rezie) if rezie
        root << (Ox::Element.new('Poradi') << poradi) if poradi
        root << (Ox::Element.new('Povaha') << povaha) if povaha
        root << (Ox::Element.new('CilZdroj') << cil_zdroj) if cil_zdroj
        root << (Ox::Element.new('PevnaCena') << pevna_cena) if pevna_cena
        root << (Ox::Element.new('Cena') << cena) if cena
        root << (Ox::Element.new('PocetMJ') << pocet_mj) if pocet_mj
        root << (Ox::Element.new('PocetMJFix') << pocet_mj_fix) if pocet_mj_fix
        root << (Ox::Element.new('Kapacita') << kapacita) if kapacita
        root << (Ox::Element.new('Time') << time) if time
        root << (Ox::Element.new('TimeFix') << time_fix) if time_fix
        root << (Ox::Element.new('StartTime') << start_time) if start_time
        root << (Ox::Element.new('LastTime') << last_time) if last_time
        root << (Ox::Element.new('StartOper') << start_oper) if start_oper
        root << (Ox::Element.new('PodilCeny') << podil_ceny) if podil_ceny
        root << (Ox::Element.new('PoziceVykr') << pozice_vykr) if pozice_vykr
        root << (Ox::Element.new('Zakazka') << zakazka) if zakazka
        root << (Ox::Element.new('Stav') << stav) if stav
        root << (Ox::Element.new('Poznamka') << poznamka) if poznamka
        root << SkladType.new(sklad, 'Sklad').builder if sklad

        root
      end
    end
  end
end