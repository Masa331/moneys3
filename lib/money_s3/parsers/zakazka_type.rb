module MoneyS3
  module Parsers
    class ZakazkaType
      include BaseParser

      def zkrat
        at 'Zkrat'
      end

      def nazev
        at 'Nazev'
      end

      def obch_prip
        at 'ObchPrip'
      end

      def pozn
        at 'Pozn'
      end

      def dat_pl_zah
        at 'DatPlZah'
      end

      def dat_zah
        at 'DatZah'
      end

      def dat_pl_pred
        at 'DatPlPred'
      end

      def dat_pred
        at 'DatPred'
      end

      def zaruka_do
        at 'ZarukaDo'
      end

      def odp_os
        at 'OdpOs'
      end

      def druh_zak
        at 'DruhZak'
      end

      def typ_zak
        at 'TypZak'
      end

      def stav_zak
        at 'StavZak'
      end

      def hodnoceni
        at 'Hodnoceni'
      end

      def c_objednavk
        at 'CObjednavk'
      end

      def vystavil
        at 'Vystavil'
      end

      def dod_odb
        submodel_at(FirmaType, 'DodOdb')
      end

      def seznam_zakazkovy_kusovnik
        array_of_at(KusovnikType, ['SeznamZakazkovyKusovnik', 'ZakazkovyKusovnik'])
      end

      def vlajky
        submodel_at(Vlajky, 'Vlajky')
      end

      def dokumenty
        array_of_at(String, ['Dokumenty', 'Dokument'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:nazev] = nazev if has? 'Nazev'
        hash[:obch_prip] = obch_prip if has? 'ObchPrip'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:dat_pl_zah] = dat_pl_zah if has? 'DatPlZah'
        hash[:dat_zah] = dat_zah if has? 'DatZah'
        hash[:dat_pl_pred] = dat_pl_pred if has? 'DatPlPred'
        hash[:dat_pred] = dat_pred if has? 'DatPred'
        hash[:zaruka_do] = zaruka_do if has? 'ZarukaDo'
        hash[:odp_os] = odp_os if has? 'OdpOs'
        hash[:druh_zak] = druh_zak if has? 'DruhZak'
        hash[:typ_zak] = typ_zak if has? 'TypZak'
        hash[:stav_zak] = stav_zak if has? 'StavZak'
        hash[:hodnoceni] = hodnoceni if has? 'Hodnoceni'
        hash[:c_objednavk] = c_objednavk if has? 'CObjednavk'
        hash[:vystavil] = vystavil if has? 'Vystavil'
        hash[:dod_odb] = dod_odb.to_h_with_attrs if has? 'DodOdb'
        hash[:seznam_zakazkovy_kusovnik] = seznam_zakazkovy_kusovnik.map(&:to_h_with_attrs) if has? 'SeznamZakazkovyKusovnik'
        hash[:vlajky] = vlajky.to_h_with_attrs if has? 'Vlajky'
        hash[:dokumenty] = dokumenty if has? 'Dokumenty'

        hash
      end
    end
  end
end