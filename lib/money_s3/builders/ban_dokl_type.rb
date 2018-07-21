module MoneyS3
  module Builders
    class BanDoklType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Vydej', data[:vydej], data[:vydej_attributes]) if data.key? :vydej
        root << build_element('Doklad', data[:doklad], data[:doklad_attributes]) if data.key? :doklad
        root << build_element('EvCisDokl', data[:ev_cis_dokl], data[:ev_cis_dokl_attributes]) if data.key? :ev_cis_dokl
        root << build_element('ZpusobUctovani', data[:zpusob_uctovani], data[:zpusob_uctovani_attributes]) if data.key? :zpusob_uctovani
        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('DatUcPr', data[:dat_uc_pr], data[:dat_uc_pr_attributes]) if data.key? :dat_uc_pr
        root << build_element('DatVyst', data[:dat_vyst], data[:dat_vyst_attributes]) if data.key? :dat_vyst
        root << build_element('DatPlat', data[:dat_plat], data[:dat_plat_attributes]) if data.key? :dat_plat
        root << build_element('DatPln', data[:dat_pln], data[:dat_pln_attributes]) if data.key? :dat_pln
        root << build_element('DatUplDPH', data[:dat_upl_dph], data[:dat_upl_dph_attributes]) if data.key? :dat_upl_dph
        root << build_element('Vypis', data[:vypis], data[:vypis_attributes]) if data.key? :vypis
        root << build_element('IDPolozky', data[:id_polozky], data[:id_polozky_attributes]) if data.key? :id_polozky
        root << build_element('AdUcet', data[:ad_ucet], data[:ad_ucet_attributes]) if data.key? :ad_ucet
        root << build_element('AdKod', data[:ad_kod], data[:ad_kod_attributes]) if data.key? :ad_kod
        root << build_element('PrijatDokl', data[:prijat_dokl], data[:prijat_dokl_attributes]) if data.key? :prijat_dokl
        root << build_element('VarSym', data[:var_sym], data[:var_sym_attributes]) if data.key? :var_sym
        root << build_element('ParSym', data[:par_sym], data[:par_sym_attributes]) if data.key? :par_sym
        root << build_element('KonSym', data[:kon_sym], data[:kon_sym_attributes]) if data.key? :kon_sym
        root << build_element('SpecSym', data[:spec_sym], data[:spec_sym_attributes]) if data.key? :spec_sym
        if data.key? :adresa
          root << DokladFirmaType.new('Adresa', data[:adresa]).builder
        end
        root << build_element('PrKont', data[:pr_kont], data[:pr_kont_attributes]) if data.key? :pr_kont
        root << build_element('Cleneni', data[:cleneni], data[:cleneni_attributes]) if data.key? :cleneni
        root << build_element('Stred', data[:stred], data[:stred_attributes]) if data.key? :stred
        root << build_element('Zakazka', data[:zakazka], data[:zakazka_attributes]) if data.key? :zakazka
        root << build_element('Cinnost', data[:cinnost], data[:cinnost_attributes]) if data.key? :cinnost
        root << build_element('StatMOSS', data[:stat_moss], data[:stat_moss_attributes]) if data.key? :stat_moss
        root << build_element('SSazba', data[:s_sazba], data[:s_sazba_attributes]) if data.key? :s_sazba
        root << build_element('ZSazba', data[:z_sazba], data[:z_sazba_attributes]) if data.key? :z_sazba
        if data.key? :souhrn_dph
          root << SouhrnDPHType.new('SouhrnDPH', data[:souhrn_dph]).builder
        end
        root << build_element('Celkem', data[:celkem], data[:celkem_attributes]) if data.key? :celkem
        if data.key? :valuty
          root << Valuty2.new('Valuty', data[:valuty]).builder
        end
        root << build_element('Pozn', data[:pozn], data[:pozn_attributes]) if data.key? :pozn
        root << build_element('DRada', data[:d_rada], data[:d_rada_attributes]) if data.key? :d_rada
        root << build_element('DCislo', data[:d_cislo], data[:d_cislo_attributes]) if data.key? :d_cislo
        root << build_element('Vyst', data[:vyst], data[:vyst_attributes]) if data.key? :vyst
        root << build_element('TypDokl', data[:typ_dokl], data[:typ_dokl_attributes]) if data.key? :typ_dokl
        if data.key? :ucet
          root << Ucet.new('Ucet', data[:ucet]).builder
        end
        if data.key? :seznam_norm_polozek
          element = Ox::Element.new('SeznamNormPolozek')
          data[:seznam_norm_polozek].each { |i| element << NormPolozUDType.new('NormPolozka', i).builder }
          root << element
        end
        if data.key? :seznam_rozuct_polozek
          element = Ox::Element.new('SeznamRozuctPolozek')
          data[:seznam_rozuct_polozek].each { |i| element << RozuctPolozUDType.new('RozuctPolozka', i).builder }
          root << element
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