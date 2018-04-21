module MoneyS3
  module Builders
    class ZavazekType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Doklad', data[:doklad]) if data.key? :doklad
        root << build_element('ZpusobUctovani', data[:zpusob_uctovani]) if data.key? :zpusob_uctovani
        root << build_element('DRada', data[:d_rada]) if data.key? :d_rada
        root << build_element('DCislo', data[:d_cislo]) if data.key? :d_cislo
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('PrDokl', data[:pr_dokl]) if data.key? :pr_dokl
        root << build_element('PuvCDokl', data[:puv_c_dokl]) if data.key? :puv_c_dokl
        root << build_element('VarSym', data[:var_sym]) if data.key? :var_sym
        root << build_element('ParSym', data[:par_sym]) if data.key? :par_sym
        root << build_element('KonSym', data[:kon_sym]) if data.key? :kon_sym
        root << build_element('SpecSym', data[:spec_sym]) if data.key? :spec_sym
        root << build_element('DatUcPr', data[:dat_uc_pr]) if data.key? :dat_uc_pr
        root << build_element('DatVyst', data[:dat_vyst]) if data.key? :dat_vyst
        root << build_element('DatSpl', data[:dat_spl]) if data.key? :dat_spl
        root << build_element('DatPln', data[:dat_pln]) if data.key? :dat_pln
        root << build_element('Doruceno', data[:doruceno]) if data.key? :doruceno
        root << build_element('Dbrpis', data[:dbrpis]) if data.key? :dbrpis
        root << build_element('DobrDUZP', data[:dobr_duzp]) if data.key? :dobr_duzp
        if data.key? :adresa
          root << DokladFirmaType.new('Adresa', data[:adresa]).builder
        end
        root << build_element('UcPokl', data[:uc_pokl]) if data.key? :uc_pokl
        root << build_element('PrKont', data[:pr_kont]) if data.key? :pr_kont
        root << build_element('Cleneni', data[:cleneni]) if data.key? :cleneni
        root << build_element('Stred', data[:stred]) if data.key? :stred
        root << build_element('Zakazka', data[:zakazka]) if data.key? :zakazka
        root << build_element('Cinnost', data[:cinnost]) if data.key? :cinnost
        root << build_element('PlnenDPH', data[:plnen_dph]) if data.key? :plnen_dph
        root << build_element('UcelZdPl', data[:ucel_zd_pl]) if data.key? :ucel_zd_pl
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn
        root << build_element('SSazba', data[:s_sazba]) if data.key? :s_sazba
        root << build_element('ZSazba', data[:z_sazba]) if data.key? :z_sazba
        if data.key? :souhrn_dph
          root << SouhrnDPHType.new('SouhrnDPH', data[:souhrn_dph]).builder
        end
        root << build_element('Celkem', data[:celkem]) if data.key? :celkem
        if data.key? :valuty
          root << Valuty2.new('Valuty', data[:valuty]).builder
        end
        root << build_element('UhZbyva', data[:uh_zbyva]) if data.key? :uh_zbyva
        root << build_element('UhDatum', data[:uh_datum]) if data.key? :uh_datum
        root << build_element('UhDokl', data[:uh_dokl]) if data.key? :uh_dokl
        root << build_element('PUDatum', data[:pu_datum]) if data.key? :pu_datum
        root << build_element('PUZbyva', data[:pu_zbyva]) if data.key? :pu_zbyva
        root << build_element('ValutyKUhr', data[:valuty_k_uhr]) if data.key? :valuty_k_uhr
        root << build_element('DatUpom1', data[:dat_upom1]) if data.key? :dat_upom1
        root << build_element('DatUpom2', data[:dat_upom2]) if data.key? :dat_upom2
        root << build_element('DatUpomL', data[:dat_upom_l]) if data.key? :dat_upom_l
        root << build_element('TypDokl', data[:typ_dokl]) if data.key? :typ_dokl
        root << build_element('ZjednD', data[:zjedn_d]) if data.key? :zjedn_d
        root << build_element('Vyst', data[:vyst]) if data.key? :vyst
        if data.key? :seznam_rozuct_polozek
          element = Ox::Element.new('SeznamRozuctPolozek')
          data[:seznam_rozuct_polozek].each { |i| element << RozuctPolozUDType.new('RozuctPolozka', i).builder }
          root << element
        end
        if data.key? :seznam_norm_polozek
          element = Ox::Element.new('SeznamNormPolozek')
          data[:seznam_norm_polozek].each { |i| element << NormPolozUDType.new('NormPolozka', i).builder }
          root << element
        end
        if data.key? :moje_firma
          root << MojeFirmaType.new('MojeFirma', data[:moje_firma]).builder
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