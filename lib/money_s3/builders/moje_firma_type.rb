module MoneyS3
  module Builders
    class MojeFirmaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Nazev', data[:nazev], data[:nazev_attributes]) if data.key? :nazev
        if data.key? :adresa
          root << AdresaType.new('Adresa', data[:adresa]).builder
        end
        root << build_element('ObchNazev', data[:obch_nazev], data[:obch_nazev_attributes]) if data.key? :obch_nazev
        if data.key? :obch_adresa
          root << AdresaType.new('ObchAdresa', data[:obch_adresa]).builder
        end
        root << build_element('FaktNazev', data[:fakt_nazev], data[:fakt_nazev_attributes]) if data.key? :fakt_nazev
        if data.key? :fakt_adresa
          root << AdresaType.new('FaktAdresa', data[:fakt_adresa]).builder
        end
        if data.key? :tel
          root << TelefonType.new('Tel', data[:tel]).builder
        end
        if data.key? :fax
          root << TelefonType.new('Fax', data[:fax]).builder
        end
        if data.key? :mobil
          root << TelefonType.new('Mobil', data[:mobil]).builder
        end
        root << build_element('EMail', data[:e_mail], data[:e_mail_attributes]) if data.key? :e_mail
        root << build_element('WWW', data[:www], data[:www_attributes]) if data.key? :www
        root << build_element('ICO', data[:ico], data[:ico_attributes]) if data.key? :ico
        root << build_element('DIC', data[:dic], data[:dic_attributes]) if data.key? :dic
        root << build_element('DICSK', data[:dicsk], data[:dicsk_attributes]) if data.key? :dicsk
        root << build_element('Banka', data[:banka], data[:banka_attributes]) if data.key? :banka
        root << build_element('Ucet', data[:ucet], data[:ucet_attributes]) if data.key? :ucet
        root << build_element('KodBanky', data[:kod_banky], data[:kod_banky_attributes]) if data.key? :kod_banky
        root << build_element('KodPartn', data[:kod_partn], data[:kod_partn_attributes]) if data.key? :kod_partn
        root << build_element('FyzOsoba', data[:fyz_osoba], data[:fyz_osoba_attributes]) if data.key? :fyz_osoba
        root << build_element('SpisovaZnacka', data[:spisova_znacka], data[:spisova_znacka_attributes]) if data.key? :spisova_znacka
        root << build_element('MenaSymb', data[:mena_symb], data[:mena_symb_attributes]) if data.key? :mena_symb
        root << build_element('MenaKod', data[:mena_kod], data[:mena_kod_attributes]) if data.key? :mena_kod
        if data.key? :seznam_bank_spojeni
          element = Ox::Element.new('SeznamBankSpojeni')
          data[:seznam_bank_spojeni].each { |i| element << BankSpojeniType.new('BankSpojeni', i).builder }
          root << element
        end

        root
      end
    end
  end
end