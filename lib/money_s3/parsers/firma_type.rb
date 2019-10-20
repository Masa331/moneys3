module MoneyS3
  module Parsers
    class FirmaType
      include ParserCore::BaseParser

      def guid
        at 'GUID'
      end

      def guid_attributes
        attributes_at 'GUID'
      end

      def nazev
        at 'Nazev'
      end

      def nazev_attributes
        attributes_at 'Nazev'
      end

      def skupina_id
        at 'SkupinaID'
      end

      def skupina_id_attributes
        attributes_at 'SkupinaID'
      end

      def adresa
        submodel_at(AdresaType, 'Adresa')
      end

      def obch_nazev
        at 'ObchNazev'
      end

      def obch_nazev_attributes
        attributes_at 'ObchNazev'
      end

      def obch_adresa
        submodel_at(AdresaType, 'ObchAdresa')
      end

      def fakt_nazev
        at 'FaktNazev'
      end

      def fakt_nazev_attributes
        attributes_at 'FaktNazev'
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

      def e_mail
        at 'EMail'
      end

      def e_mail_attributes
        attributes_at 'EMail'
      end

      def e_mail_kopie
        at 'EMailKopie'
      end

      def e_mail_kopie_attributes
        attributes_at 'EMailKopie'
      end

      def e_mail_skryt
        at 'EMailSkryt'
      end

      def e_mail_skryt_attributes
        attributes_at 'EMailSkryt'
      end

      def www
        at 'WWW'
      end

      def www_attributes
        attributes_at 'WWW'
      end

      def spojeni
        at 'Spojeni'
      end

      def spojeni_attributes
        attributes_at 'Spojeni'
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

      def kod_dan_ur
        at 'KodDanUr'
      end

      def kod_dan_ur_attributes
        attributes_at 'KodDanUr'
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

      def cinnosti
        at 'Cinnosti'
      end

      def cinnosti_attributes
        attributes_at 'Cinnosti'
      end

      def adr_klice
        at 'AdrKlice'
      end

      def adr_klice_attributes
        attributes_at 'AdrKlice'
      end

      def ceny
        at 'Ceny'
      end

      def ceny_attributes
        attributes_at 'Ceny'
      end

      def ceniky
        at 'Ceniky'
      end

      def ceniky_attributes
        attributes_at 'Ceniky'
      end

      def kredit
        at 'Kredit'
      end

      def kredit_attributes
        attributes_at 'Kredit'
      end

      def kredit_val
        at 'KreditVal'
      end

      def kredit_val_attributes
        attributes_at 'KreditVal'
      end

      def splat_poh
        at 'SplatPoh'
      end

      def splat_poh_attributes
        attributes_at 'SplatPoh'
      end

      def splat_zav
        at 'SplatZav'
      end

      def splat_zav_attributes
        attributes_at 'SplatZav'
      end

      def spl_poh_dni
        at 'SplPohDni'
      end

      def spl_poh_dni_attributes
        attributes_at 'SplPohDni'
      end

      def spl_zav_dni
        at 'SplZavDni'
      end

      def spl_zav_dni_attributes
        attributes_at 'SplZavDni'
      end

      def odesl_upom
        at 'OdeslUpom'
      end

      def odesl_upom_attributes
        attributes_at 'OdeslUpom'
      end

      def sleva
        at 'Sleva'
      end

      def sleva_attributes
        attributes_at 'Sleva'
      end

      def flag_sleva
        at 'FlagSleva'
      end

      def flag_sleva_attributes
        attributes_at 'FlagSleva'
      end

      def mail
        at 'Mail'
      end

      def mail_attributes
        attributes_at 'Mail'
      end

      def zprava
        at 'Zprava'
      end

      def zprava_attributes
        attributes_at 'Zprava'
      end

      def poznamka
        at 'Poznamka'
      end

      def poznamka_attributes
        attributes_at 'Poznamka'
      end

      def kod_partn
        at 'KodPartn'
      end

      def kod_partn_attributes
        attributes_at 'KodPartn'
      end

      def isdoc
        at 'ISDOC'
      end

      def isdoc_attributes
        attributes_at 'ISDOC'
      end

      def eshop
        submodel_at(Eshop2, 'eshop')
      end

      def osoba
        array_of_at(OsobaType, ['Osoba'])
      end

      def seznam_bank_spojeni
        array_of_at(BankSpojeniType, ['SeznamBankSpojeni', 'BankSpojeni'])
      end

      def skupina
        submodel_at(SkupinaFiremType, 'Skupina')
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

        hash[:guid] = guid if has? 'GUID'
        hash[:guid_attributes] = guid_attributes if has? 'GUID'
        hash[:nazev] = nazev if has? 'Nazev'
        hash[:nazev_attributes] = nazev_attributes if has? 'Nazev'
        hash[:skupina_id] = skupina_id if has? 'SkupinaID'
        hash[:skupina_id_attributes] = skupina_id_attributes if has? 'SkupinaID'
        hash[:adresa] = adresa.to_h if has? 'Adresa'
        hash[:obch_nazev] = obch_nazev if has? 'ObchNazev'
        hash[:obch_nazev_attributes] = obch_nazev_attributes if has? 'ObchNazev'
        hash[:obch_adresa] = obch_adresa.to_h if has? 'ObchAdresa'
        hash[:fakt_nazev] = fakt_nazev if has? 'FaktNazev'
        hash[:fakt_nazev_attributes] = fakt_nazev_attributes if has? 'FaktNazev'
        hash[:fakt_adresa] = fakt_adresa.to_h if has? 'FaktAdresa'
        hash[:tel] = tel.to_h if has? 'Tel'
        hash[:fax] = fax.to_h if has? 'Fax'
        hash[:mobil] = mobil.to_h if has? 'Mobil'
        hash[:e_mail] = e_mail if has? 'EMail'
        hash[:e_mail_attributes] = e_mail_attributes if has? 'EMail'
        hash[:e_mail_kopie] = e_mail_kopie if has? 'EMailKopie'
        hash[:e_mail_kopie_attributes] = e_mail_kopie_attributes if has? 'EMailKopie'
        hash[:e_mail_skryt] = e_mail_skryt if has? 'EMailSkryt'
        hash[:e_mail_skryt_attributes] = e_mail_skryt_attributes if has? 'EMailSkryt'
        hash[:www] = www if has? 'WWW'
        hash[:www_attributes] = www_attributes if has? 'WWW'
        hash[:spojeni] = spojeni if has? 'Spojeni'
        hash[:spojeni_attributes] = spojeni_attributes if has? 'Spojeni'
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
        hash[:kod_dan_ur] = kod_dan_ur if has? 'KodDanUr'
        hash[:kod_dan_ur_attributes] = kod_dan_ur_attributes if has? 'KodDanUr'
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
        hash[:cinnosti] = cinnosti if has? 'Cinnosti'
        hash[:cinnosti_attributes] = cinnosti_attributes if has? 'Cinnosti'
        hash[:adr_klice] = adr_klice if has? 'AdrKlice'
        hash[:adr_klice_attributes] = adr_klice_attributes if has? 'AdrKlice'
        hash[:ceny] = ceny if has? 'Ceny'
        hash[:ceny_attributes] = ceny_attributes if has? 'Ceny'
        hash[:ceniky] = ceniky if has? 'Ceniky'
        hash[:ceniky_attributes] = ceniky_attributes if has? 'Ceniky'
        hash[:kredit] = kredit if has? 'Kredit'
        hash[:kredit_attributes] = kredit_attributes if has? 'Kredit'
        hash[:kredit_val] = kredit_val if has? 'KreditVal'
        hash[:kredit_val_attributes] = kredit_val_attributes if has? 'KreditVal'
        hash[:splat_poh] = splat_poh if has? 'SplatPoh'
        hash[:splat_poh_attributes] = splat_poh_attributes if has? 'SplatPoh'
        hash[:splat_zav] = splat_zav if has? 'SplatZav'
        hash[:splat_zav_attributes] = splat_zav_attributes if has? 'SplatZav'
        hash[:spl_poh_dni] = spl_poh_dni if has? 'SplPohDni'
        hash[:spl_poh_dni_attributes] = spl_poh_dni_attributes if has? 'SplPohDni'
        hash[:spl_zav_dni] = spl_zav_dni if has? 'SplZavDni'
        hash[:spl_zav_dni_attributes] = spl_zav_dni_attributes if has? 'SplZavDni'
        hash[:odesl_upom] = odesl_upom if has? 'OdeslUpom'
        hash[:odesl_upom_attributes] = odesl_upom_attributes if has? 'OdeslUpom'
        hash[:sleva] = sleva if has? 'Sleva'
        hash[:sleva_attributes] = sleva_attributes if has? 'Sleva'
        hash[:flag_sleva] = flag_sleva if has? 'FlagSleva'
        hash[:flag_sleva_attributes] = flag_sleva_attributes if has? 'FlagSleva'
        hash[:mail] = mail if has? 'Mail'
        hash[:mail_attributes] = mail_attributes if has? 'Mail'
        hash[:zprava] = zprava if has? 'Zprava'
        hash[:zprava_attributes] = zprava_attributes if has? 'Zprava'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:poznamka_attributes] = poznamka_attributes if has? 'Poznamka'
        hash[:kod_partn] = kod_partn if has? 'KodPartn'
        hash[:kod_partn_attributes] = kod_partn_attributes if has? 'KodPartn'
        hash[:isdoc] = isdoc if has? 'ISDOC'
        hash[:isdoc_attributes] = isdoc_attributes if has? 'ISDOC'
        hash[:eshop] = eshop.to_h if has? 'eshop'
        hash[:osoba] = osoba.map(&:to_h) if has? 'Osoba'
        hash[:seznam_bank_spojeni] = seznam_bank_spojeni.map(&:to_h) if has? 'SeznamBankSpojeni'
        hash[:skupina] = skupina.to_h if has? 'Skupina'
        hash[:vlajky] = vlajky.to_h if has? 'Vlajky'
        hash[:dokumenty] = dokumenty if has? 'Dokumenty'

        hash
      end
    end
  end
end