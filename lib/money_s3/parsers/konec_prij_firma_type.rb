module MoneyS3
  module Parsers
    class KonecPrijFirmaType
      include ParserCore::BaseParser

      def nazev
        at 'Nazev'
      end

      def nazev_attributes
        attributes_at 'Nazev'
      end

      def adresa
        submodel_at(AdresaType, 'Adresa')
      end

      def guid
        at 'GUID'
      end

      def guid_attributes
        attributes_at 'GUID'
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

      def e_mail
        at 'EMail'
      end

      def e_mail_attributes
        attributes_at 'EMail'
      end

      def www
        at 'WWW'
      end

      def www_attributes
        attributes_at 'WWW'
      end

      def ico
        at 'ICO'
      end

      def ico_attributes
        attributes_at 'ICO'
      end

      def dic
        at 'DIC'
      end

      def dic_attributes
        attributes_at 'DIC'
      end

      def dicsk
        at 'DICSK'
      end

      def dicsk_attributes
        attributes_at 'DICSK'
      end

      def platce_dph
        at 'PlatceDPH'
      end

      def platce_dph_attributes
        attributes_at 'PlatceDPH'
      end

      def fyz_osoba
        at 'FyzOsoba'
      end

      def fyz_osoba_attributes
        attributes_at 'FyzOsoba'
      end

      def banka
        at 'Banka'
      end

      def banka_attributes
        attributes_at 'Banka'
      end

      def ucet
        at 'Ucet'
      end

      def ucet_attributes
        attributes_at 'Ucet'
      end

      def kod_banky
        at 'KodBanky'
      end

      def kod_banky_attributes
        attributes_at 'KodBanky'
      end

      def v_symb
        at 'VSymb'
      end

      def v_symb_attributes
        attributes_at 'VSymb'
      end

      def spec_sym
        at 'SpecSym'
      end

      def spec_sym_attributes
        attributes_at 'SpecSym'
      end

      def kod_partn
        at 'KodPartn'
      end

      def kod_partn_attributes
        attributes_at 'KodPartn'
      end

      def eshop
        submodel_at(Eshop2, 'eshop')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:nazev] = nazev if has? 'Nazev'
        hash[:nazev_attributes] = nazev_attributes if has? 'Nazev'
        hash[:adresa] = adresa.to_h if has? 'Adresa'
        hash[:guid] = guid if has? 'GUID'
        hash[:guid_attributes] = guid_attributes if has? 'GUID'
        hash[:tel] = tel.to_h if has? 'Tel'
        hash[:fax] = fax.to_h if has? 'Fax'
        hash[:mobil] = mobil.to_h if has? 'Mobil'
        hash[:e_mail] = e_mail if has? 'EMail'
        hash[:e_mail_attributes] = e_mail_attributes if has? 'EMail'
        hash[:www] = www if has? 'WWW'
        hash[:www_attributes] = www_attributes if has? 'WWW'
        hash[:ico] = ico if has? 'ICO'
        hash[:ico_attributes] = ico_attributes if has? 'ICO'
        hash[:dic] = dic if has? 'DIC'
        hash[:dic_attributes] = dic_attributes if has? 'DIC'
        hash[:dicsk] = dicsk if has? 'DICSK'
        hash[:dicsk_attributes] = dicsk_attributes if has? 'DICSK'
        hash[:platce_dph] = platce_dph if has? 'PlatceDPH'
        hash[:platce_dph_attributes] = platce_dph_attributes if has? 'PlatceDPH'
        hash[:fyz_osoba] = fyz_osoba if has? 'FyzOsoba'
        hash[:fyz_osoba_attributes] = fyz_osoba_attributes if has? 'FyzOsoba'
        hash[:banka] = banka if has? 'Banka'
        hash[:banka_attributes] = banka_attributes if has? 'Banka'
        hash[:ucet] = ucet if has? 'Ucet'
        hash[:ucet_attributes] = ucet_attributes if has? 'Ucet'
        hash[:kod_banky] = kod_banky if has? 'KodBanky'
        hash[:kod_banky_attributes] = kod_banky_attributes if has? 'KodBanky'
        hash[:v_symb] = v_symb if has? 'VSymb'
        hash[:v_symb_attributes] = v_symb_attributes if has? 'VSymb'
        hash[:spec_sym] = spec_sym if has? 'SpecSym'
        hash[:spec_sym_attributes] = spec_sym_attributes if has? 'SpecSym'
        hash[:kod_partn] = kod_partn if has? 'KodPartn'
        hash[:kod_partn_attributes] = kod_partn_attributes if has? 'KodPartn'
        hash[:eshop] = eshop.to_h if has? 'eshop'

        hash
      end
    end
  end
end