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
        { cislo: cislo,
          typ: typ,
          cis_karty: cis_karty,
          varianta: varianta,
          rezie: rezie,
          poradi: poradi,
          povaha: povaha,
          cil_zdroj: cil_zdroj,
          pevna_cena: pevna_cena,
          cena: cena,
          pocet_mj: pocet_mj,
          pocet_mj_fix: pocet_mj_fix,
          kapacita: kapacita,
          time: time,
          time_fix: time_fix,
          start_time: start_time,
          last_time: last_time,
          start_oper: start_oper,
          podil_ceny: podil_ceny,
          pozice_vykr: pozice_vykr,
          zakazka: zakazka,
          stav: stav,
          poznamka: poznamka,
          sklad: sklad.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end