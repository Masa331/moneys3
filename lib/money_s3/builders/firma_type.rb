module MoneyS3
  module Builders
    class FirmaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('GUID', data[:guid]) if data.key? :guid
        root << build_element('Nazev', data[:nazev]) if data.key? :nazev
        root << build_element('SkupinaID', data[:skupina_id]) if data.key? :skupina_id
        if data.key? :adresa
          root << AdresaType.new('Adresa', data[:adresa]).builder
        end
        root << build_element('ObchNazev', data[:obch_nazev]) if data.key? :obch_nazev
        if data.key? :obch_adresa
          root << AdresaType.new('ObchAdresa', data[:obch_adresa]).builder
        end
        root << build_element('FaktNazev', data[:fakt_nazev]) if data.key? :fakt_nazev
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
        root << build_element('EMail', data[:e_mail]) if data.key? :e_mail
        root << build_element('WWW', data[:www]) if data.key? :www
        root << build_element('Spojeni', data[:spojeni]) if data.key? :spojeni
        root << build_element('ICO', data[:ico]) if data.key? :ico
        root << build_element('DIC', data[:dic]) if data.key? :dic
        root << build_element('DICSK', data[:dicsk]) if data.key? :dicsk
        root << build_element('PlatceDPH', data[:platce_dph]) if data.key? :platce_dph
        root << build_element('FyzOsoba', data[:fyz_osoba]) if data.key? :fyz_osoba
        root << build_element('KodDanUr', data[:kod_dan_ur]) if data.key? :kod_dan_ur
        root << build_element('Banka', data[:banka]) if data.key? :banka
        root << build_element('Ucet', data[:ucet]) if data.key? :ucet
        root << build_element('KodBanky', data[:kod_banky]) if data.key? :kod_banky
        root << build_element('VSymb', data[:v_symb]) if data.key? :v_symb
        root << build_element('SpecSym', data[:spec_sym]) if data.key? :spec_sym
        root << build_element('Cinnosti', data[:cinnosti]) if data.key? :cinnosti
        root << build_element('AdrKlice', data[:adr_klice]) if data.key? :adr_klice
        root << build_element('Ceny', data[:ceny]) if data.key? :ceny
        root << build_element('Ceniky', data[:ceniky]) if data.key? :ceniky
        root << build_element('Kredit', data[:kredit]) if data.key? :kredit
        root << build_element('KreditVal', data[:kredit_val]) if data.key? :kredit_val
        root << build_element('SplatPoh', data[:splat_poh]) if data.key? :splat_poh
        root << build_element('SplatZav', data[:splat_zav]) if data.key? :splat_zav
        root << build_element('SplPohDni', data[:spl_poh_dni]) if data.key? :spl_poh_dni
        root << build_element('SplZavDni', data[:spl_zav_dni]) if data.key? :spl_zav_dni
        root << build_element('Sleva', data[:sleva]) if data.key? :sleva
        root << build_element('FlagSleva', data[:flag_sleva]) if data.key? :flag_sleva
        root << build_element('Mail', data[:mail]) if data.key? :mail
        root << build_element('Zprava', data[:zprava]) if data.key? :zprava
        root << build_element('Poznamka', data[:poznamka]) if data.key? :poznamka
        root << build_element('KodPartn', data[:kod_partn]) if data.key? :kod_partn
        root << build_element('ISDOC', data[:isdoc]) if data.key? :isdoc
        if data.key? :eshop
          root << Eshop2.new('eshop', data[:eshop]).builder
        end
        if data.key? :osoba
          data[:osoba].each { |i| root << OsobaType.new('Osoba', i).builder }
        end
        if data.key? :seznam_bank_spojeni
          element = Ox::Element.new('SeznamBankSpojeni')
          data[:seznam_bank_spojeni].each { |i| element << BankSpojeniType.new('BankSpojeni', i).builder }
          root << element
        end
        if data.key? :skupina
          root << SkupinaFiremType.new('Skupina', data[:skupina]).builder
        end
        if data.key? :vlajky
          root << Vlajky.new('Vlajky', data[:vlajky]).builder
        end
        if data.key? :dokumenty
          element = Ox::Element.new('Dokumenty')
          data[:dokumenty].map { |i| Ox::Element.new('Dokument') << i }.each { |i| element << i }
          root << element
        end

        root
      end
    end
  end
end