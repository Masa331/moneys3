module MoneyS3
  module Parsers
    class HeaderKusovnikType
      include ParserCore::BaseParser

      def cislo
        at 'Cislo'
      end

      def cislo_attributes
        attributes_at 'Cislo'
      end

      def druh
        at 'Druh'
      end

      def druh_attributes
        attributes_at 'Druh'
      end

      def typ
        at 'Typ'
      end

      def typ_attributes
        attributes_at 'Typ'
      end

      def skupina
        submodel_at(SkupinaKusovnikType, 'Skupina')
      end

      def cis_karty
        at 'CisKarty'
      end

      def cis_karty_attributes
        attributes_at 'CisKarty'
      end

      def zkratka
        at 'Zkratka'
      end

      def zkratka_attributes
        attributes_at 'Zkratka'
      end

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def naklad_mat
        at 'NakladMat'
      end

      def naklad_mat_attributes
        attributes_at 'NakladMat'
      end

      def naklad_mzd
        at 'NakladMzd'
      end

      def naklad_mzd_attributes
        attributes_at 'NakladMzd'
      end

      def naklad_koop
        at 'NakladKoop'
      end

      def naklad_koop_attributes
        attributes_at 'NakladKoop'
      end

      def naklad_str
        at 'NakladStr'
      end

      def naklad_str_attributes
        attributes_at 'NakladStr'
      end

      def vyuziti
        at 'Vyuziti'
      end

      def vyuziti_attributes
        attributes_at 'Vyuziti'
      end

      def kalendar
        at 'Kalendar'
      end

      def kalendar_attributes
        attributes_at 'Kalendar'
      end

      def des_mist
        at 'DesMist'
      end

      def des_mist_attributes
        attributes_at 'DesMist'
      end

      def var_kus
        at 'VarKus'
      end

      def var_kus_attributes
        attributes_at 'VarKus'
      end

      def price_mask
        at 'PriceMask'
      end

      def price_mask_attributes
        attributes_at 'PriceMask'
      end

      def time_mask
        at 'TimeMask'
      end

      def time_mask_attributes
        attributes_at 'TimeMask'
      end

      def id_uziv
        at 'IDUziv'
      end

      def id_uziv_attributes
        attributes_at 'IDUziv'
      end

      def datum_zmeny
        at 'DatumZmeny'
      end

      def datum_zmeny_attributes
        attributes_at 'DatumZmeny'
      end

      def cas_zmeny
        at 'CasZmeny'
      end

      def cas_zmeny_attributes
        attributes_at 'CasZmeny'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:cislo] = cislo if has? 'Cislo'
        hash[:cislo_attributes] = cislo_attributes if has? 'Cislo'
        hash[:druh] = druh if has? 'Druh'
        hash[:druh_attributes] = druh_attributes if has? 'Druh'
        hash[:typ] = typ if has? 'Typ'
        hash[:typ_attributes] = typ_attributes if has? 'Typ'
        hash[:skupina] = skupina.to_h if has? 'Skupina'
        hash[:cis_karty] = cis_karty if has? 'CisKarty'
        hash[:cis_karty_attributes] = cis_karty_attributes if has? 'CisKarty'
        hash[:zkratka] = zkratka if has? 'Zkratka'
        hash[:zkratka_attributes] = zkratka_attributes if has? 'Zkratka'
        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:naklad_mat] = naklad_mat if has? 'NakladMat'
        hash[:naklad_mat_attributes] = naklad_mat_attributes if has? 'NakladMat'
        hash[:naklad_mzd] = naklad_mzd if has? 'NakladMzd'
        hash[:naklad_mzd_attributes] = naklad_mzd_attributes if has? 'NakladMzd'
        hash[:naklad_koop] = naklad_koop if has? 'NakladKoop'
        hash[:naklad_koop_attributes] = naklad_koop_attributes if has? 'NakladKoop'
        hash[:naklad_str] = naklad_str if has? 'NakladStr'
        hash[:naklad_str_attributes] = naklad_str_attributes if has? 'NakladStr'
        hash[:vyuziti] = vyuziti if has? 'Vyuziti'
        hash[:vyuziti_attributes] = vyuziti_attributes if has? 'Vyuziti'
        hash[:kalendar] = kalendar if has? 'Kalendar'
        hash[:kalendar_attributes] = kalendar_attributes if has? 'Kalendar'
        hash[:des_mist] = des_mist if has? 'DesMist'
        hash[:des_mist_attributes] = des_mist_attributes if has? 'DesMist'
        hash[:var_kus] = var_kus if has? 'VarKus'
        hash[:var_kus_attributes] = var_kus_attributes if has? 'VarKus'
        hash[:price_mask] = price_mask if has? 'PriceMask'
        hash[:price_mask_attributes] = price_mask_attributes if has? 'PriceMask'
        hash[:time_mask] = time_mask if has? 'TimeMask'
        hash[:time_mask_attributes] = time_mask_attributes if has? 'TimeMask'
        hash[:id_uziv] = id_uziv if has? 'IDUziv'
        hash[:id_uziv_attributes] = id_uziv_attributes if has? 'IDUziv'
        hash[:datum_zmeny] = datum_zmeny if has? 'DatumZmeny'
        hash[:datum_zmeny_attributes] = datum_zmeny_attributes if has? 'DatumZmeny'
        hash[:cas_zmeny] = cas_zmeny if has? 'CasZmeny'
        hash[:cas_zmeny_attributes] = cas_zmeny_attributes if has? 'CasZmeny'

        hash
      end
    end
  end
end