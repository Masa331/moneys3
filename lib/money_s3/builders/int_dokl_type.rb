module MoneyS3
  module Builders
    class IntDoklType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Doklad', data[:doklad], data[:doklad_attributes]) if data.key? :doklad
        if data.key? :eet
          root << EETType.new('EET', data[:eet]).builder
        end
        root << build_element('ZpusobUctovani', data[:zpusob_uctovani], data[:zpusob_uctovani_attributes]) if data.key? :zpusob_uctovani
        root << build_element('Storno', data[:storno], data[:storno_attributes]) if data.key? :storno
        root << build_element('Del', data[:del], data[:del_attributes]) if data.key? :del
        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('DatUcPr', data[:dat_uc_pr], data[:dat_uc_pr_attributes]) if data.key? :dat_uc_pr
        root << build_element('DatPln', data[:dat_pln], data[:dat_pln_attributes]) if data.key? :dat_pln
        root << build_element('DatUplDPH', data[:dat_upl_dph], data[:dat_upl_dph_attributes]) if data.key? :dat_upl_dph
        root << build_element('DatumKV', data[:datum_kv], data[:datum_kv_attributes]) if data.key? :datum_kv
        root << build_element('CisloZapoc', data[:cislo_zapoc], data[:cislo_zapoc_attributes]) if data.key? :cislo_zapoc
        root << build_element('PrijatDokl', data[:prijat_dokl], data[:prijat_dokl_attributes]) if data.key? :prijat_dokl
        root << build_element('VarSym', data[:var_sym], data[:var_sym_attributes]) if data.key? :var_sym
        root << build_element('ParSym', data[:par_sym], data[:par_sym_attributes]) if data.key? :par_sym
        if data.key? :adresa
          root << DokladFirmaType.new('Adresa', data[:adresa]).builder
        end
        root << build_element('PrKont', data[:pr_kont], data[:pr_kont_attributes]) if data.key? :pr_kont
        root << build_element('Cleneni', data[:cleneni], data[:cleneni_attributes]) if data.key? :cleneni
        root << build_element('Stred', data[:stred], data[:stred_attributes]) if data.key? :stred
        root << build_element('Zakazka', data[:zakazka], data[:zakazka_attributes]) if data.key? :zakazka
        root << build_element('Cinnost', data[:cinnost], data[:cinnost_attributes]) if data.key? :cinnost
        root << build_element('Vyroba', data[:vyroba], data[:vyroba_attributes]) if data.key? :vyroba
        root << build_element('StatMOSS', data[:stat_moss], data[:stat_moss_attributes]) if data.key? :stat_moss
        root << build_element('ZpVypDPH', data[:zp_vyp_dph], data[:zp_vyp_dph_attributes]) if data.key? :zp_vyp_dph
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
        root << build_element('Rezim', data[:rezim], data[:rezim_attributes]) if data.key? :rezim
        root << build_element('KorekceCen', data[:korekce_cen], data[:korekce_cen_attributes]) if data.key? :korekce_cen
        root << build_element('TypDokl', data[:typ_dokl], data[:typ_dokl_attributes]) if data.key? :typ_dokl
        if data.key? :rozuct_polozka
          data[:rozuct_polozka].each { |i| root << RozuctPolozIDType.new('RozuctPolozka', i).builder }
        end
        if data.key? :norm_polozka
          data[:norm_polozka].each { |i| root << NormPolozIDType.new('NormPolozka', i).builder }
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