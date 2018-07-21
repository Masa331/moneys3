module MoneyS3
  module Parsers
    class ChildKusovnikType
      include ParserCore::BaseParser

      def cislo
        at 'Cislo'
      end

      def cislo_attributes
        attributes_at 'Cislo'
      end

      def typ
        at 'Typ'
      end

      def typ_attributes
        attributes_at 'Typ'
      end

      def cis_karty
        at 'CisKarty'
      end

      def cis_karty_attributes
        attributes_at 'CisKarty'
      end

      def varianta
        at 'Varianta'
      end

      def varianta_attributes
        attributes_at 'Varianta'
      end

      def rezie
        at 'Rezie'
      end

      def rezie_attributes
        attributes_at 'Rezie'
      end

      def poradi
        at 'Poradi'
      end

      def poradi_attributes
        attributes_at 'Poradi'
      end

      def povaha
        at 'Povaha'
      end

      def povaha_attributes
        attributes_at 'Povaha'
      end

      def cil_zdroj
        at 'CilZdroj'
      end

      def cil_zdroj_attributes
        attributes_at 'CilZdroj'
      end

      def pevna_cena
        at 'PevnaCena'
      end

      def pevna_cena_attributes
        attributes_at 'PevnaCena'
      end

      def cena
        at 'Cena'
      end

      def cena_attributes
        attributes_at 'Cena'
      end

      def pocet_mj
        at 'PocetMJ'
      end

      def pocet_mj_attributes
        attributes_at 'PocetMJ'
      end

      def pocet_mj_fix
        at 'PocetMJFix'
      end

      def pocet_mj_fix_attributes
        attributes_at 'PocetMJFix'
      end

      def kapacita
        at 'Kapacita'
      end

      def kapacita_attributes
        attributes_at 'Kapacita'
      end

      def time
        at 'Time'
      end

      def time_attributes
        attributes_at 'Time'
      end

      def time_fix
        at 'TimeFix'
      end

      def time_fix_attributes
        attributes_at 'TimeFix'
      end

      def start_time
        at 'StartTime'
      end

      def start_time_attributes
        attributes_at 'StartTime'
      end

      def last_time
        at 'LastTime'
      end

      def last_time_attributes
        attributes_at 'LastTime'
      end

      def start_oper
        at 'StartOper'
      end

      def start_oper_attributes
        attributes_at 'StartOper'
      end

      def podil_ceny
        at 'PodilCeny'
      end

      def podil_ceny_attributes
        attributes_at 'PodilCeny'
      end

      def sklad
        submodel_at(SkladType, 'Sklad')
      end

      def pozice_vykr
        at 'PoziceVykr'
      end

      def pozice_vykr_attributes
        attributes_at 'PoziceVykr'
      end

      def zakazka
        at 'Zakazka'
      end

      def zakazka_attributes
        attributes_at 'Zakazka'
      end

      def stav
        at 'Stav'
      end

      def stav_attributes
        attributes_at 'Stav'
      end

      def poznamka
        at 'Poznamka'
      end

      def poznamka_attributes
        attributes_at 'Poznamka'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:cislo] = cislo if has? 'Cislo'
        hash[:cislo_attributes] = cislo_attributes if has? 'Cislo'
        hash[:typ] = typ if has? 'Typ'
        hash[:typ_attributes] = typ_attributes if has? 'Typ'
        hash[:cis_karty] = cis_karty if has? 'CisKarty'
        hash[:cis_karty_attributes] = cis_karty_attributes if has? 'CisKarty'
        hash[:varianta] = varianta if has? 'Varianta'
        hash[:varianta_attributes] = varianta_attributes if has? 'Varianta'
        hash[:rezie] = rezie if has? 'Rezie'
        hash[:rezie_attributes] = rezie_attributes if has? 'Rezie'
        hash[:poradi] = poradi if has? 'Poradi'
        hash[:poradi_attributes] = poradi_attributes if has? 'Poradi'
        hash[:povaha] = povaha if has? 'Povaha'
        hash[:povaha_attributes] = povaha_attributes if has? 'Povaha'
        hash[:cil_zdroj] = cil_zdroj if has? 'CilZdroj'
        hash[:cil_zdroj_attributes] = cil_zdroj_attributes if has? 'CilZdroj'
        hash[:pevna_cena] = pevna_cena if has? 'PevnaCena'
        hash[:pevna_cena_attributes] = pevna_cena_attributes if has? 'PevnaCena'
        hash[:cena] = cena if has? 'Cena'
        hash[:cena_attributes] = cena_attributes if has? 'Cena'
        hash[:pocet_mj] = pocet_mj if has? 'PocetMJ'
        hash[:pocet_mj_attributes] = pocet_mj_attributes if has? 'PocetMJ'
        hash[:pocet_mj_fix] = pocet_mj_fix if has? 'PocetMJFix'
        hash[:pocet_mj_fix_attributes] = pocet_mj_fix_attributes if has? 'PocetMJFix'
        hash[:kapacita] = kapacita if has? 'Kapacita'
        hash[:kapacita_attributes] = kapacita_attributes if has? 'Kapacita'
        hash[:time] = time if has? 'Time'
        hash[:time_attributes] = time_attributes if has? 'Time'
        hash[:time_fix] = time_fix if has? 'TimeFix'
        hash[:time_fix_attributes] = time_fix_attributes if has? 'TimeFix'
        hash[:start_time] = start_time if has? 'StartTime'
        hash[:start_time_attributes] = start_time_attributes if has? 'StartTime'
        hash[:last_time] = last_time if has? 'LastTime'
        hash[:last_time_attributes] = last_time_attributes if has? 'LastTime'
        hash[:start_oper] = start_oper if has? 'StartOper'
        hash[:start_oper_attributes] = start_oper_attributes if has? 'StartOper'
        hash[:podil_ceny] = podil_ceny if has? 'PodilCeny'
        hash[:podil_ceny_attributes] = podil_ceny_attributes if has? 'PodilCeny'
        hash[:sklad] = sklad.to_h if has? 'Sklad'
        hash[:pozice_vykr] = pozice_vykr if has? 'PoziceVykr'
        hash[:pozice_vykr_attributes] = pozice_vykr_attributes if has? 'PoziceVykr'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:zakazka_attributes] = zakazka_attributes if has? 'Zakazka'
        hash[:stav] = stav if has? 'Stav'
        hash[:stav_attributes] = stav_attributes if has? 'Stav'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:poznamka_attributes] = poznamka_attributes if has? 'Poznamka'

        hash
      end
    end
  end
end