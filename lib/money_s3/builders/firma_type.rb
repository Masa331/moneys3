require 'money_s3/builders/base_builder'
require 'money_s3/builders/adresa_type'
require 'money_s3/builders/telefon_type'
require 'money_s3/builders/isdoc'
require 'money_s3/builders/eshop'
require 'money_s3/builders/skupina_firem_type'
require 'money_s3/builders/vlajky'
require 'money_s3/builders/osoba_type'
require 'money_s3/builders/bank_spojeni_type'

module MoneyS3
  module Builders
    class FirmaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

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

        if attributes.key? :skupina_id
          element = Ox::Element.new('SkupinaID')
          element << attributes[:skupina_id] if attributes[:skupina_id]
          root << element
        end

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

        if attributes.key? :spojeni
          element = Ox::Element.new('Spojeni')
          element << attributes[:spojeni] if attributes[:spojeni]
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

        if attributes.key? :kod_dan_ur
          element = Ox::Element.new('KodDanUr')
          element << attributes[:kod_dan_ur] if attributes[:kod_dan_ur]
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

        if attributes.key? :cinnosti
          element = Ox::Element.new('Cinnosti')
          element << attributes[:cinnosti] if attributes[:cinnosti]
          root << element
        end

        if attributes.key? :adr_klice
          element = Ox::Element.new('AdrKlice')
          element << attributes[:adr_klice] if attributes[:adr_klice]
          root << element
        end

        if attributes.key? :ceny
          element = Ox::Element.new('Ceny')
          element << attributes[:ceny] if attributes[:ceny]
          root << element
        end

        if attributes.key? :ceniky
          element = Ox::Element.new('Ceniky')
          element << attributes[:ceniky] if attributes[:ceniky]
          root << element
        end

        if attributes.key? :kredit
          element = Ox::Element.new('Kredit')
          element << attributes[:kredit] if attributes[:kredit]
          root << element
        end

        if attributes.key? :kredit_val
          element = Ox::Element.new('KreditVal')
          element << attributes[:kredit_val] if attributes[:kredit_val]
          root << element
        end

        if attributes.key? :splat_poh
          element = Ox::Element.new('SplatPoh')
          element << attributes[:splat_poh] if attributes[:splat_poh]
          root << element
        end

        if attributes.key? :splat_zav
          element = Ox::Element.new('SplatZav')
          element << attributes[:splat_zav] if attributes[:splat_zav]
          root << element
        end

        if attributes.key? :spl_poh_dni
          element = Ox::Element.new('SplPohDni')
          element << attributes[:spl_poh_dni] if attributes[:spl_poh_dni]
          root << element
        end

        if attributes.key? :spl_zav_dni
          element = Ox::Element.new('SplZavDni')
          element << attributes[:spl_zav_dni] if attributes[:spl_zav_dni]
          root << element
        end

        if attributes.key? :sleva
          element = Ox::Element.new('Sleva')
          element << attributes[:sleva] if attributes[:sleva]
          root << element
        end

        if attributes.key? :flag_sleva
          element = Ox::Element.new('FlagSleva')
          element << attributes[:flag_sleva] if attributes[:flag_sleva]
          root << element
        end

        if attributes.key? :mail
          element = Ox::Element.new('Mail')
          element << attributes[:mail] if attributes[:mail]
          root << element
        end

        if attributes.key? :zprava
          element = Ox::Element.new('Zprava')
          element << attributes[:zprava] if attributes[:zprava]
          root << element
        end

        if attributes.key? :poznamka
          element = Ox::Element.new('Poznamka')
          element << attributes[:poznamka] if attributes[:poznamka]
          root << element
        end

        if attributes.key? :kod_partn
          element = Ox::Element.new('KodPartn')
          element << attributes[:kod_partn] if attributes[:kod_partn]
          root << element
        end

        if attributes.key? :adresa
          root << AdresaType.new(attributes[:adresa], 'Adresa').builder
        end

        if attributes.key? :obch_adresa
          root << AdresaType.new(attributes[:obch_adresa], 'ObchAdresa').builder
        end

        if attributes.key? :fakt_adresa
          root << AdresaType.new(attributes[:fakt_adresa], 'FaktAdresa').builder
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

        if attributes.key? :skupina
          root << SkupinaFiremType.new(attributes[:skupina], 'Skupina').builder
        end

        if attributes.key? :vlajky
          root << Vlajky.new(attributes[:vlajky], 'Vlajky').builder
        end

        if attributes.key? :osoba
          attributes[:osoba].each { |i| root << OsobaType.new(i, 'Osoba').builder }
        end

        if attributes.key? :seznam_bank_spojeni
          element = Ox::Element.new('SeznamBankSpojeni')
          attributes[:seznam_bank_spojeni].each { |i| element << BankSpojeniType.new(i, 'BankSpojeni').builder }
          root << element
        end

        if attributes.key? :dokumenty
          element = Ox::Element.new('Dokumenty')
          attributes[:dokumenty].map { |i| Ox::Element.new('Dokument') << i }.each { |i| element << i }
          root << element
        end

        root
      end
    end
  end
end