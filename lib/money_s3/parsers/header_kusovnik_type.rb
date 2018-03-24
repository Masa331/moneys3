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
        hash = {}

        hash[:cislo] = cislo if raw.key? :Cislo
        hash[:druh] = druh if raw.key? :Druh
        hash[:typ] = typ if raw.key? :Typ
        hash[:cis_karty] = cis_karty if raw.key? :CisKarty
        hash[:zkratka] = zkratka if raw.key? :Zkratka
        hash[:popis] = popis if raw.key? :Popis
        hash[:naklad_mat] = naklad_mat if raw.key? :NakladMat
        hash[:naklad_mzd] = naklad_mzd if raw.key? :NakladMzd
        hash[:naklad_koop] = naklad_koop if raw.key? :NakladKoop
        hash[:naklad_str] = naklad_str if raw.key? :NakladStr
        hash[:vyuziti] = vyuziti if raw.key? :Vyuziti
        hash[:kalendar] = kalendar if raw.key? :Kalendar
        hash[:des_mist] = des_mist if raw.key? :DesMist
        hash[:var_kus] = var_kus if raw.key? :VarKus
        hash[:price_mask] = price_mask if raw.key? :PriceMask
        hash[:time_mask] = time_mask if raw.key? :TimeMask
        hash[:id_uziv] = id_uziv if raw.key? :IDUziv
        hash[:datum_zmeny] = datum_zmeny if raw.key? :DatumZmeny
        hash[:cas_zmeny] = cas_zmeny if raw.key? :CasZmeny
        hash[:skupina] = skupina.to_h if raw.key? :Skupina

        hash
      end
    end
  end
end