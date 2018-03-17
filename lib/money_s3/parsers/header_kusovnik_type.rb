require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/skupina_kusovnik_type'

module MoneyS3
  module Parsers
    class HeaderKusovnikType
      include BaseParser

      def cislo
        at :Cislo
      end

      def druh
        at :Druh
      end

      def typ
        at :Typ
      end

      def cis_karty
        at :CisKarty
      end

      def zkratka
        at :Zkratka
      end

      def popis
        at :Popis
      end

      def naklad_mat
        at :NakladMat
      end

      def naklad_mzd
        at :NakladMzd
      end

      def naklad_koop
        at :NakladKoop
      end

      def naklad_str
        at :NakladStr
      end

      def vyuziti
        at :Vyuziti
      end

      def kalendar
        at :Kalendar
      end

      def des_mist
        at :DesMist
      end

      def var_kus
        at :VarKus
      end

      def price_mask
        at :PriceMask
      end

      def time_mask
        at :TimeMask
      end

      def id_uziv
        at :IDUziv
      end

      def datum_zmeny
        at :DatumZmeny
      end

      def cas_zmeny
        at :CasZmeny
      end

      def skupina
        submodel_at(SkupinaKusovnikType, :Skupina)
      end

      def to_h
        { cislo: cislo,
          druh: druh,
          typ: typ,
          cis_karty: cis_karty,
          zkratka: zkratka,
          popis: popis,
          naklad_mat: naklad_mat,
          naklad_mzd: naklad_mzd,
          naklad_koop: naklad_koop,
          naklad_str: naklad_str,
          vyuziti: vyuziti,
          kalendar: kalendar,
          des_mist: des_mist,
          var_kus: var_kus,
          price_mask: price_mask,
          time_mask: time_mask,
          id_uziv: id_uziv,
          datum_zmeny: datum_zmeny,
          cas_zmeny: cas_zmeny,
          skupina: skupina.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end