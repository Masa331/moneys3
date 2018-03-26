require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/adresa_type'
require 'money_s3/parsers/telefon_type'

module MoneyS3
  module Parsers
    class MojeFirmaType
      include BaseParser

      def nazev
        at 'Nazev'
      end

      def obch_nazev
        at 'ObchNazev'
      end

      def fakt_nazev
        at 'FaktNazev'
      end

      def e_mail
        at 'EMail'
      end

      def www
        at 'WWW'
      end

      def ico
        at 'ICO'
      end

      def dic
        at 'DIC'
      end

      def dicsk
        at 'DICSK'
      end

      def banka
        at 'Banka'
      end

      def ucet
        at 'Ucet'
      end

      def kod_banky
        at 'KodBanky'
      end

      def kod_partn
        at 'KodPartn'
      end

      def fyz_osoba
        at 'FyzOsoba'
      end

      def mena_symb
        at 'MenaSymb'
      end

      def mena_kod
        at 'MenaKod'
      end

      def adresa
        submodel_at(AdresaType, 'Adresa')
      end

      def obch_adresa
        submodel_at(AdresaType, 'ObchAdresa')
      end

      def fakt_adresa
        submodel_at(AdresaType, 'FaktAdresa')
      end

      def tel
        submodel_at(TelefonType, 'Tel')
      end

      def fax
        submodel_at(TelefonType, 'Fax')
      end

      def mobil
        submodel_at(TelefonType, 'Mobil')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:nazev] = nazev if has? 'Nazev'
        hash[:obch_nazev] = obch_nazev if has? 'ObchNazev'
        hash[:fakt_nazev] = fakt_nazev if has? 'FaktNazev'
        hash[:e_mail] = e_mail if has? 'EMail'
        hash[:www] = www if has? 'WWW'
        hash[:ico] = ico if has? 'ICO'
        hash[:dic] = dic if has? 'DIC'
        hash[:dicsk] = dicsk if has? 'DICSK'
        hash[:banka] = banka if has? 'Banka'
        hash[:ucet] = ucet if has? 'Ucet'
        hash[:kod_banky] = kod_banky if has? 'KodBanky'
        hash[:kod_partn] = kod_partn if has? 'KodPartn'
        hash[:fyz_osoba] = fyz_osoba if has? 'FyzOsoba'
        hash[:mena_symb] = mena_symb if has? 'MenaSymb'
        hash[:mena_kod] = mena_kod if has? 'MenaKod'
        hash[:adresa] = adresa.to_h_with_attrs if has? 'Adresa'
        hash[:obch_adresa] = obch_adresa.to_h_with_attrs if has? 'ObchAdresa'
        hash[:fakt_adresa] = fakt_adresa.to_h_with_attrs if has? 'FaktAdresa'
        hash[:tel] = tel.to_h_with_attrs if has? 'Tel'
        hash[:fax] = fax.to_h_with_attrs if has? 'Fax'
        hash[:mobil] = mobil.to_h_with_attrs if has? 'Mobil'

        hash
      end
    end
  end
end