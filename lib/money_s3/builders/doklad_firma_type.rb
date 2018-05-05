module MoneyS3
  module Builders
    class DokladFirmaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('ObchNazev', data[:obch_nazev]) if data.key? :obch_nazev
        if data.key? :obch_adresa
          root << AdresaType.new('ObchAdresa', data[:obch_adresa]).builder
        end
        root << build_element('FaktNazev', data[:fakt_nazev]) if data.key? :fakt_nazev
        root << build_element('ICO', data[:ico]) if data.key? :ico
        root << build_element('DIC', data[:dic]) if data.key? :dic
        root << build_element('DICSK', data[:dicsk]) if data.key? :dicsk
        if data.key? :fakt_adresa
          root << AdresaType.new('FaktAdresa', data[:fakt_adresa]).builder
        end
        root << build_element('GUID', data[:guid]) if data.key? :guid
        root << build_element('Nazev', data[:nazev]) if data.key? :nazev
        if data.key? :adresa
          root << AdresaType.new('Adresa', data[:adresa]).builder
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
        root << build_element('EMail', data[:e_mail]) if data.key? :e_mail
        root << build_element('WWW', data[:www]) if data.key? :www
        root << build_element('PlatceDPH', data[:platce_dph]) if data.key? :platce_dph
        root << build_element('FyzOsoba', data[:fyz_osoba]) if data.key? :fyz_osoba
        root << build_element('Banka', data[:banka]) if data.key? :banka
        root << build_element('Ucet', data[:ucet]) if data.key? :ucet
        root << build_element('KodBanky', data[:kod_banky]) if data.key? :kod_banky
        root << build_element('VSymb', data[:v_symb]) if data.key? :v_symb
        root << build_element('SpecSym', data[:spec_sym]) if data.key? :spec_sym
        root << build_element('KodPartn', data[:kod_partn]) if data.key? :kod_partn
        root << build_element('ISDOC', data[:isdoc]) if data.key? :isdoc
        if data.key? :eshop
          root << Eshop2.new('eshop', data[:eshop]).builder
        end

        root
      end
    end
  end
end