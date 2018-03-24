require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/skupina_kusovnik_type'

module MoneyS3
  module Parsers
    class HeaderKusovnikType
      include BaseParser

      def cislo
        at 'Cislo'
      end

      def druh
        at 'Druh'
      end

      def typ
        at 'Typ'
      end

      def cis_karty
        at 'CisKarty'
      end

      def zkratka
        at 'Zkratka'
      end

      def popis
        at 'Popis'
      end

      def naklad_mat
        at 'NakladMat'
      end

      def naklad_mzd
        at 'NakladMzd'
      end

      def naklad_koop
        at 'NakladKoop'
      end

      def naklad_str
        at 'NakladStr'
      end

      def vyuziti
        at 'Vyuziti'
      end

      def kalendar
        at 'Kalendar'
      end

      def des_mist
        at 'DesMist'
      end

      def var_kus
        at 'VarKus'
      end

      def price_mask
        at 'PriceMask'
      end

      def time_mask
        at 'TimeMask'
      end

      def id_uziv
        at 'IDUziv'
      end

      def datum_zmeny
        at 'DatumZmeny'
      end

      def cas_zmeny
        at 'CasZmeny'
      end

      def skupina
        submodel_at(SkupinaKusovnikType, 'Skupina')
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:cislo] = cislo if has? 'Cislo'
        hash[:druh] = druh if has? 'Druh'
        hash[:typ] = typ if has? 'Typ'
        hash[:cis_karty] = cis_karty if has? 'CisKarty'
        hash[:zkratka] = zkratka if has? 'Zkratka'
        hash[:popis] = popis if has? 'Popis'
        hash[:naklad_mat] = naklad_mat if has? 'NakladMat'
        hash[:naklad_mzd] = naklad_mzd if has? 'NakladMzd'
        hash[:naklad_koop] = naklad_koop if has? 'NakladKoop'
        hash[:naklad_str] = naklad_str if has? 'NakladStr'
        hash[:vyuziti] = vyuziti if has? 'Vyuziti'
        hash[:kalendar] = kalendar if has? 'Kalendar'
        hash[:des_mist] = des_mist if has? 'DesMist'
        hash[:var_kus] = var_kus if has? 'VarKus'
        hash[:price_mask] = price_mask if has? 'PriceMask'
        hash[:time_mask] = time_mask if has? 'TimeMask'
        hash[:id_uziv] = id_uziv if has? 'IDUziv'
        hash[:datum_zmeny] = datum_zmeny if has? 'DatumZmeny'
        hash[:cas_zmeny] = cas_zmeny if has? 'CasZmeny'
        hash[:skupina] = skupina.to_h if has? 'Skupina'

        hash
      end
    end
  end
end