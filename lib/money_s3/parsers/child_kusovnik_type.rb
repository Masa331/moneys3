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

        hash[:cislo] = cislo if raw.key? :Cislo
        hash[:typ] = typ if raw.key? :Typ
        hash[:cis_karty] = cis_karty if raw.key? :CisKarty
        hash[:varianta] = varianta if raw.key? :Varianta
        hash[:rezie] = rezie if raw.key? :Rezie
        hash[:poradi] = poradi if raw.key? :Poradi
        hash[:povaha] = povaha if raw.key? :Povaha
        hash[:cil_zdroj] = cil_zdroj if raw.key? :CilZdroj
        hash[:pevna_cena] = pevna_cena if raw.key? :PevnaCena
        hash[:cena] = cena if raw.key? :Cena
        hash[:pocet_mj] = pocet_mj if raw.key? :PocetMJ
        hash[:pocet_mj_fix] = pocet_mj_fix if raw.key? :PocetMJFix
        hash[:kapacita] = kapacita if raw.key? :Kapacita
        hash[:time] = time if raw.key? :Time
        hash[:time_fix] = time_fix if raw.key? :TimeFix
        hash[:start_time] = start_time if raw.key? :StartTime
        hash[:last_time] = last_time if raw.key? :LastTime
        hash[:start_oper] = start_oper if raw.key? :StartOper
        hash[:podil_ceny] = podil_ceny if raw.key? :PodilCeny
        hash[:pozice_vykr] = pozice_vykr if raw.key? :PoziceVykr
        hash[:zakazka] = zakazka if raw.key? :Zakazka
        hash[:stav] = stav if raw.key? :Stav
        hash[:poznamka] = poznamka if raw.key? :Poznamka
        hash[:sklad] = sklad.to_h if raw.key? :Sklad

        hash
      end
    end
  end
end