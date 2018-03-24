require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/adresa_type'
require 'money_s3/parsers/telefon_type'
require 'money_s3/parsers/isdoc'
require 'money_s3/parsers/eshop'

module MoneyS3
  module Parsers
    class DokladFirmaType
      include BaseParser

      def obch_nazev
        at :ObchNazev
      end

      def fakt_nazev
        at :FaktNazev
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

      def guid
        at :GUID
      end

      def nazev
        at :Nazev
      end

      def e_mail
        at :EMail
      end

      def www
        at :WWW
      end

      def platce_dph
        at :PlatceDPH
      end

      def fyz_osoba
        at :FyzOsoba
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

      def v_symb
        at :VSymb
      end

      def spec_sym
        at :SpecSym
      end

      def kod_partn
        at :KodPartn
      end

      def obch_adresa
        submodel_at(AdresaType, :ObchAdresa)
      end

      def fakt_adresa
        submodel_at(AdresaType, :FaktAdresa)
      end

      def adresa
        submodel_at(AdresaType, :Adresa)
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

      def isdoc
        submodel_at(ISDOC, :ISDOC)
      end

      def eshop
        submodel_at(Eshop, :eshop)
      end

      def to_h
        hash = {}

        hash[:obch_nazev] = obch_nazev if raw.key? :ObchNazev
        hash[:fakt_nazev] = fakt_nazev if raw.key? :FaktNazev
        hash[:ico] = ico if raw.key? :ICO
        hash[:dic] = dic if raw.key? :DIC
        hash[:dicsk] = dicsk if raw.key? :DICSK
        hash[:guid] = guid if raw.key? :GUID
        hash[:nazev] = nazev if raw.key? :Nazev
        hash[:e_mail] = e_mail if raw.key? :EMail
        hash[:www] = www if raw.key? :WWW
        hash[:platce_dph] = platce_dph if raw.key? :PlatceDPH
        hash[:fyz_osoba] = fyz_osoba if raw.key? :FyzOsoba
        hash[:banka] = banka if raw.key? :Banka
        hash[:ucet] = ucet if raw.key? :Ucet
        hash[:kod_banky] = kod_banky if raw.key? :KodBanky
        hash[:v_symb] = v_symb if raw.key? :VSymb
        hash[:spec_sym] = spec_sym if raw.key? :SpecSym
        hash[:kod_partn] = kod_partn if raw.key? :KodPartn
        hash[:obch_adresa] = obch_adresa.to_h if raw.key? :ObchAdresa
        hash[:fakt_adresa] = fakt_adresa.to_h if raw.key? :FaktAdresa
        hash[:adresa] = adresa.to_h if raw.key? :Adresa
        hash[:tel] = tel.to_h if raw.key? :Tel
        hash[:fax] = fax.to_h if raw.key? :Fax
        hash[:mobil] = mobil.to_h if raw.key? :Mobil
        hash[:isdoc] = isdoc.to_h if raw.key? :ISDOC
        hash[:eshop] = eshop.to_h if raw.key? :eshop

        hash
      end
    end
  end
end