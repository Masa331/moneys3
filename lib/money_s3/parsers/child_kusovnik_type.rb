require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/sklad_type'

module MoneyS3
  module Parsers
    class ChildKusovnikType
      include BaseParser

      def cislo
        at :Cislo
      end

      def typ
        at :Typ
      end

      def cis_karty
        at :CisKarty
      end

      def varianta
        at :Varianta
      end

      def rezie
        at :Rezie
      end

      def poradi
        at :Poradi
      end

      def povaha
        at :Povaha
      end

      def cil_zdroj
        at :CilZdroj
      end

      def pevna_cena
        at :PevnaCena
      end

      def cena
        at :Cena
      end

      def pocet_mj
        at :PocetMJ
      end

      def pocet_mj_fix
        at :PocetMJFix
      end

      def kapacita
        at :Kapacita
      end

      def time
        at :Time
      end

      def time_fix
        at :TimeFix
      end

      def start_time
        at :StartTime
      end

      def last_time
        at :LastTime
      end

      def start_oper
        at :StartOper
      end

      def podil_ceny
        at :PodilCeny
      end

      def pozice_vykr
        at :PoziceVykr
      end

      def zakazka
        at :Zakazka
      end

      def stav
        at :Stav
      end

      def poznamka
        at :Poznamka
      end

      def sklad
        submodel_at(SkladType, :Sklad)
      end

      def to_h
        hash = {}

        hash[:cislo] = cislo if has? :Cislo
        hash[:typ] = typ if has? :Typ
        hash[:cis_karty] = cis_karty if has? :CisKarty
        hash[:varianta] = varianta if has? :Varianta
        hash[:rezie] = rezie if has? :Rezie
        hash[:poradi] = poradi if has? :Poradi
        hash[:povaha] = povaha if has? :Povaha
        hash[:cil_zdroj] = cil_zdroj if has? :CilZdroj
        hash[:pevna_cena] = pevna_cena if has? :PevnaCena
        hash[:cena] = cena if has? :Cena
        hash[:pocet_mj] = pocet_mj if has? :PocetMJ
        hash[:pocet_mj_fix] = pocet_mj_fix if has? :PocetMJFix
        hash[:kapacita] = kapacita if has? :Kapacita
        hash[:time] = time if has? :Time
        hash[:time_fix] = time_fix if has? :TimeFix
        hash[:start_time] = start_time if has? :StartTime
        hash[:last_time] = last_time if has? :LastTime
        hash[:start_oper] = start_oper if has? :StartOper
        hash[:podil_ceny] = podil_ceny if has? :PodilCeny
        hash[:pozice_vykr] = pozice_vykr if has? :PoziceVykr
        hash[:zakazka] = zakazka if has? :Zakazka
        hash[:stav] = stav if has? :Stav
        hash[:poznamka] = poznamka if has? :Poznamka
        hash[:sklad] = sklad.to_h if has? :Sklad

        hash
      end
    end
  end
end