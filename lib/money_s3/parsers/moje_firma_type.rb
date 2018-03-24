require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/adresa_type'
require 'money_s3/parsers/telefon_type'

module MoneyS3
  module Parsers
    class MojeFirmaType
      include BaseParser

      def nazev
        at :Nazev
      end

      def obch_nazev
        at :ObchNazev
      end

      def fakt_nazev
        at :FaktNazev
      end

      def e_mail
        at :EMail
      end

      def www
        at :WWW
      end

      def ico
        at :ICO
      end

      def dic
        at :DIC
      end

      def dicsk
        at :DICSK
      end

      def banka
        at :Banka
      end

      def ucet
        at :Ucet
      end

      def kod_banky
        at :KodBanky
      end

      def kod_partn
        at :KodPartn
      end

      def fyz_osoba
        at :FyzOsoba
      end

      def mena_symb
        at :MenaSymb
      end

      def mena_kod
        at :MenaKod
      end

      def adresa
        submodel_at(AdresaType, :Adresa)
      end

      def obch_adresa
        submodel_at(AdresaType, :ObchAdresa)
      end

      def fakt_adresa
        submodel_at(AdresaType, :FaktAdresa)
      end

      def tel
        submodel_at(TelefonType, :Tel)
      end

      def fax
        submodel_at(TelefonType, :Fax)
      end

      def mobil
        submodel_at(TelefonType, :Mobil)
      end

      def to_h
        hash = {}

        hash[:nazev] = nazev if raw.key? :Nazev
        hash[:obch_nazev] = obch_nazev if raw.key? :ObchNazev
        hash[:fakt_nazev] = fakt_nazev if raw.key? :FaktNazev
        hash[:e_mail] = e_mail if raw.key? :EMail
        hash[:www] = www if raw.key? :WWW
        hash[:ico] = ico if raw.key? :ICO
        hash[:dic] = dic if raw.key? :DIC
        hash[:dicsk] = dicsk if raw.key? :DICSK
        hash[:banka] = banka if raw.key? :Banka
        hash[:ucet] = ucet if raw.key? :Ucet
        hash[:kod_banky] = kod_banky if raw.key? :KodBanky
        hash[:kod_partn] = kod_partn if raw.key? :KodPartn
        hash[:fyz_osoba] = fyz_osoba if raw.key? :FyzOsoba
        hash[:mena_symb] = mena_symb if raw.key? :MenaSymb
        hash[:mena_kod] = mena_kod if raw.key? :MenaKod
        hash[:adresa] = adresa.to_h if raw.key? :Adresa
        hash[:obch_adresa] = obch_adresa.to_h if raw.key? :ObchAdresa
        hash[:fakt_adresa] = fakt_adresa.to_h if raw.key? :FaktAdresa
        hash[:tel] = tel.to_h if raw.key? :Tel
        hash[:fax] = fax.to_h if raw.key? :Fax
        hash[:mobil] = mobil.to_h if raw.key? :Mobil

        hash
      end
    end
  end
end