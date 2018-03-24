require 'money_s3/builders/base_builder'
require 'money_s3/builders/adresa_type'
require 'money_s3/builders/telefon_type'
require 'money_s3/builders/isdoc'
require 'money_s3/builders/eshop'

module MoneyS3
  module Builders
    class DokladFirmaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :obch_nazev
          element = Ox::Element.new('ObchNazev')
          element << attributes[:obch_nazev] if attributes[:obch_nazev]
          root << element
        end

        if attributes.key? :fakt_nazev
          element = Ox::Element.new('FaktNazev')
          element << attributes[:fakt_nazev] if attributes[:fakt_nazev]
          root << element
        end

        if attributes.key? :ico
          element = Ox::Element.new('ICO')
          element << attributes[:ico] if attributes[:ico]
          root << element
        end

        if attributes.key? :dic
          element = Ox::Element.new('DIC')
          element << attributes[:dic] if attributes[:dic]
          root << element
        end

        if attributes.key? :dicsk
          element = Ox::Element.new('DICSK')
          element << attributes[:dicsk] if attributes[:dicsk]
          root << element
        end

        if attributes.key? :guid
          element = Ox::Element.new('GUID')
          element << attributes[:guid] if attributes[:guid]
          root << element
        end

        if attributes.key? :nazev
          element = Ox::Element.new('Nazev')
          element << attributes[:nazev] if attributes[:nazev]
          root << element
        end

        if attributes.key? :e_mail
          element = Ox::Element.new('EMail')
          element << attributes[:e_mail] if attributes[:e_mail]
          root << element
        end

        if attributes.key? :www
          element = Ox::Element.new('WWW')
          element << attributes[:www] if attributes[:www]
          root << element
        end

        if attributes.key? :platce_dph
          element = Ox::Element.new('PlatceDPH')
          element << attributes[:platce_dph] if attributes[:platce_dph]
          root << element
        end

        if attributes.key? :fyz_osoba
          element = Ox::Element.new('FyzOsoba')
          element << attributes[:fyz_osoba] if attributes[:fyz_osoba]
          root << element
        end

        if attributes.key? :banka
          element = Ox::Element.new('Banka')
          element << attributes[:banka] if attributes[:banka]
          root << element
        end

        if attributes.key? :ucet
          element = Ox::Element.new('Ucet')
          element << attributes[:ucet] if attributes[:ucet]
          root << element
        end

        if attributes.key? :kod_banky
          element = Ox::Element.new('KodBanky')
          element << attributes[:kod_banky] if attributes[:kod_banky]
          root << element
        end

        if attributes.key? :v_symb
          element = Ox::Element.new('VSymb')
          element << attributes[:v_symb] if attributes[:v_symb]
          root << element
        end

        if attributes.key? :spec_sym
          element = Ox::Element.new('SpecSym')
          element << attributes[:spec_sym] if attributes[:spec_sym]
          root << element
        end

        if attributes.key? :kod_partn
          element = Ox::Element.new('KodPartn')
          element << attributes[:kod_partn] if attributes[:kod_partn]
          root << element
        end

        if attributes.key? :obch_adresa
          root << AdresaType.new(attributes[:obch_adresa], 'ObchAdresa').builder
        end

        if attributes.key? :fakt_adresa
          root << AdresaType.new(attributes[:fakt_adresa], 'FaktAdresa').builder
        end

        if attributes.key? :adresa
          root << AdresaType.new(attributes[:adresa], 'Adresa').builder
        end

        if attributes.key? :tel
          root << TelefonType.new(attributes[:tel], 'Tel').builder
        end

        if attributes.key? :fax
          root << TelefonType.new(attributes[:fax], 'Fax').builder
        end

        if attributes.key? :mobil
          root << TelefonType.new(attributes[:mobil], 'Mobil').builder
        end

        if attributes.key? :isdoc
          root << ISDOC.new(attributes[:isdoc], 'ISDOC').builder
        end

        if attributes.key? :eshop
          root << Eshop.new(attributes[:eshop], 'eshop').builder
        end

        root
      end
    end
  end
end