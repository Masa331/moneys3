module MoneyS3
  module Parsers
    class ZakazkaType
      include ParserCore::BaseParser

      def zkrat
        at 'Zkrat'
      end

      def zkrat_attributes
        attributes_at 'Zkrat'
      end

      def nazev
        at 'Nazev'
      end

      def nazev_attributes
        attributes_at 'Nazev'
      end

      def obch_prip
        at 'ObchPrip'
      end

      def obch_prip_attributes
        attributes_at 'ObchPrip'
      end

      def pozn
        at 'Pozn'
      end

      def pozn_attributes
        attributes_at 'Pozn'
      end

      def dat_pl_zah
        at 'DatPlZah'
      end

      def dat_pl_zah_attributes
        attributes_at 'DatPlZah'
      end

      def dat_zah
        at 'DatZah'
      end

      def dat_zah_attributes
        attributes_at 'DatZah'
      end

      def dat_pl_pred
        at 'DatPlPred'
      end

      def dat_pl_pred_attributes
        attributes_at 'DatPlPred'
      end

      def dat_pred
        at 'DatPred'
      end

      def dat_pred_attributes
        attributes_at 'DatPred'
      end

      def zaruka_do
        at 'ZarukaDo'
      end

      def zaruka_do_attributes
        attributes_at 'ZarukaDo'
      end

      def odp_os
        at 'OdpOs'
      end

      def odp_os_attributes
        attributes_at 'OdpOs'
      end

      def druh_zak
        at 'DruhZak'
      end

      def druh_zak_attributes
        attributes_at 'DruhZak'
      end

      def stav_zak
        at 'StavZak'
      end

      def stav_zak_attributes
        attributes_at 'StavZak'
      end

      def hodnoceni
        at 'Hodnoceni'
      end

      def hodnoceni_attributes
        attributes_at 'Hodnoceni'
      end

      def c_objednavk
        at 'CObjednavk'
      end

      def c_objednavk_attributes
        attributes_at 'CObjednavk'
      end

      def vystavil
        at 'Vystavil'
      end

      def vystavil_attributes
        attributes_at 'Vystavil'
      end

      def dod_odb
        submodel_at(DokladFirmaType, 'DodOdb')
      end

      def vlajky
        submodel_at(Vlajky, 'Vlajky')
      end

      def dokumenty
        array_of_at(String, ['Dokumenty', 'Dokument'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:zkrat_attributes] = zkrat_attributes if has? 'Zkrat'
        hash[:nazev] = nazev if has? 'Nazev'
        hash[:nazev_attributes] = nazev_attributes if has? 'Nazev'
        hash[:obch_prip] = obch_prip if has? 'ObchPrip'
        hash[:obch_prip_attributes] = obch_prip_attributes if has? 'ObchPrip'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'
        hash[:dat_pl_zah] = dat_pl_zah if has? 'DatPlZah'
        hash[:dat_pl_zah_attributes] = dat_pl_zah_attributes if has? 'DatPlZah'
        hash[:dat_zah] = dat_zah if has? 'DatZah'
        hash[:dat_zah_attributes] = dat_zah_attributes if has? 'DatZah'
        hash[:dat_pl_pred] = dat_pl_pred if has? 'DatPlPred'
        hash[:dat_pl_pred_attributes] = dat_pl_pred_attributes if has? 'DatPlPred'
        hash[:dat_pred] = dat_pred if has? 'DatPred'
        hash[:dat_pred_attributes] = dat_pred_attributes if has? 'DatPred'
        hash[:zaruka_do] = zaruka_do if has? 'ZarukaDo'
        hash[:zaruka_do_attributes] = zaruka_do_attributes if has? 'ZarukaDo'
        hash[:odp_os] = odp_os if has? 'OdpOs'
        hash[:odp_os_attributes] = odp_os_attributes if has? 'OdpOs'
        hash[:druh_zak] = druh_zak if has? 'DruhZak'
        hash[:druh_zak_attributes] = druh_zak_attributes if has? 'DruhZak'
        hash[:stav_zak] = stav_zak if has? 'StavZak'
        hash[:stav_zak_attributes] = stav_zak_attributes if has? 'StavZak'
        hash[:hodnoceni] = hodnoceni if has? 'Hodnoceni'
        hash[:hodnoceni_attributes] = hodnoceni_attributes if has? 'Hodnoceni'
        hash[:c_objednavk] = c_objednavk if has? 'CObjednavk'
        hash[:c_objednavk_attributes] = c_objednavk_attributes if has? 'CObjednavk'
        hash[:vystavil] = vystavil if has? 'Vystavil'
        hash[:vystavil_attributes] = vystavil_attributes if has? 'Vystavil'
        hash[:dod_odb] = dod_odb.to_h if has? 'DodOdb'
        hash[:vlajky] = vlajky.to_h if has? 'Vlajky'
        hash[:dokumenty] = dokumenty if has? 'Dokumenty'

        hash
      end
    end
  end
end