require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/adresa_type'
require 'money_s3/parsers/telefon_type'
require 'money_s3/parsers/eshop'

module MoneyS3
  module Parsers
    class SkDokladFirmaType
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

      def eshop
        submodel_at(Eshop, :eshop)
      end

      def to_h
        hash = {}

        hash[:obch_nazev] = obch_nazev if has? :ObchNazev
        hash[:fakt_nazev] = fakt_nazev if has? :FaktNazev
        hash[:ico] = ico if has? :ICO
        hash[:dic] = dic if has? :DIC
        hash[:dicsk] = dicsk if has? :DICSK
        hash[:guid] = guid if has? :GUID
        hash[:nazev] = nazev if has? :Nazev
        hash[:e_mail] = e_mail if has? :EMail
        hash[:www] = www if has? :WWW
        hash[:platce_dph] = platce_dph if has? :PlatceDPH
        hash[:fyz_osoba] = fyz_osoba if has? :FyzOsoba
        hash[:banka] = banka if has? :Banka
        hash[:ucet] = ucet if has? :Ucet
        hash[:kod_banky] = kod_banky if has? :KodBanky
        hash[:v_symb] = v_symb if has? :VSymb
        hash[:spec_sym] = spec_sym if has? :SpecSym
        hash[:kod_partn] = kod_partn if has? :KodPartn
        hash[:obch_adresa] = obch_adresa.to_h if has? :ObchAdresa
        hash[:fakt_adresa] = fakt_adresa.to_h if has? :FaktAdresa
        hash[:adresa] = adresa.to_h if has? :Adresa
        hash[:tel] = tel.to_h if has? :Tel
        hash[:fax] = fax.to_h if has? :Fax
        hash[:mobil] = mobil.to_h if has? :Mobil
        hash[:eshop] = eshop.to_h if has? :eshop

        hash
      end
    end
  end
end