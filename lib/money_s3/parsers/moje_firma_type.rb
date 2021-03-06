module MoneyS3
  module Parsers
    class MojeFirmaType
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

      def kod_partn
        at 'KodPartn'
      end

      def kod_partn_attributes
        attributes_at 'KodPartn'
      end

      def fyz_osoba
        at 'FyzOsoba'
      end

      def fyz_osoba_attributes
        attributes_at 'FyzOsoba'
      end

      def spisova_znacka
        at 'SpisovaZnacka'
      end

      def spisova_znacka_attributes
        attributes_at 'SpisovaZnacka'
      end

      def mena_symb
        at 'MenaSymb'
      end

      def mena_symb_attributes
        attributes_at 'MenaSymb'
      end

      def mena_kod
        at 'MenaKod'
      end

      def mena_kod_attributes
        attributes_at 'MenaKod'
      end

      def seznam_bank_spojeni
        array_of_at(BankSpojeniType, ['SeznamBankSpojeni', 'BankSpojeni'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:nazev] = nazev if has? 'Nazev'
        hash[:nazev_attributes] = nazev_attributes if has? 'Nazev'
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
        hash[:www] = www if has? 'WWW'
        hash[:www_attributes] = www_attributes if has? 'WWW'
        hash[:ico] = ico if has? 'ICO'
        hash[:ico_attributes] = ico_attributes if has? 'ICO'
        hash[:dic] = dic if has? 'DIC'
        hash[:dic_attributes] = dic_attributes if has? 'DIC'
        hash[:dicsk] = dicsk if has? 'DICSK'
        hash[:dicsk_attributes] = dicsk_attributes if has? 'DICSK'
        hash[:banka] = banka if has? 'Banka'
        hash[:banka_attributes] = banka_attributes if has? 'Banka'
        hash[:ucet] = ucet if has? 'Ucet'
        hash[:ucet_attributes] = ucet_attributes if has? 'Ucet'
        hash[:kod_banky] = kod_banky if has? 'KodBanky'
        hash[:kod_banky_attributes] = kod_banky_attributes if has? 'KodBanky'
        hash[:kod_partn] = kod_partn if has? 'KodPartn'
        hash[:kod_partn_attributes] = kod_partn_attributes if has? 'KodPartn'
        hash[:fyz_osoba] = fyz_osoba if has? 'FyzOsoba'
        hash[:fyz_osoba_attributes] = fyz_osoba_attributes if has? 'FyzOsoba'
        hash[:spisova_znacka] = spisova_znacka if has? 'SpisovaZnacka'
        hash[:spisova_znacka_attributes] = spisova_znacka_attributes if has? 'SpisovaZnacka'
        hash[:mena_symb] = mena_symb if has? 'MenaSymb'
        hash[:mena_symb_attributes] = mena_symb_attributes if has? 'MenaSymb'
        hash[:mena_kod] = mena_kod if has? 'MenaKod'
        hash[:mena_kod_attributes] = mena_kod_attributes if has? 'MenaKod'
        hash[:seznam_bank_spojeni] = seznam_bank_spojeni.map(&:to_h) if has? 'SeznamBankSpojeni'

        hash
      end
    end
  end
end