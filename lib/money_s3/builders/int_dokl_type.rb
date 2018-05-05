module MoneyS3
  module Builders
    class IntDoklType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Doklad', data[:doklad]) if data.key? :doklad
        if data.key? :eet
          root << EETType.new('EET', data[:eet]).builder
        end
        root << build_element('ZpusobUctovani', data[:zpusob_uctovani]) if data.key? :zpusob_uctovani
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('DatUcPr', data[:dat_uc_pr]) if data.key? :dat_uc_pr
        root << build_element('DatPln', data[:dat_pln]) if data.key? :dat_pln
        root << build_element('DatUplDPH', data[:dat_upl_dph]) if data.key? :dat_upl_dph
        root << build_element('DatumKV', data[:datum_kv]) if data.key? :datum_kv
        root << build_element('CisloZapoc', data[:cislo_zapoc]) if data.key? :cislo_zapoc
        root << build_element('PrijatDokl', data[:prijat_dokl]) if data.key? :prijat_dokl
        root << build_element('VarSym', data[:var_sym]) if data.key? :var_sym
        root << build_element('ParSym', data[:par_sym]) if data.key? :par_sym
        if data.key? :adresa
          root << DokladFirmaType.new('Adresa', data[:adresa]).builder
        end
        root << build_element('PrKont', data[:pr_kont]) if data.key? :pr_kont
        root << build_element('Cleneni', data[:cleneni]) if data.key? :cleneni
        root << build_element('Stred', data[:stred]) if data.key? :stred
        root << build_element('Zakazka', data[:zakazka]) if data.key? :zakazka
        root << build_element('Cinnost', data[:cinnost]) if data.key? :cinnost
        root << build_element('Vyroba', data[:vyroba]) if data.key? :vyroba
        root << build_element('StatMOSS', data[:stat_moss]) if data.key? :stat_moss
        root << build_element('SSazba', data[:s_sazba]) if data.key? :s_sazba
        root << build_element('ZSazba', data[:z_sazba]) if data.key? :z_sazba
        if data.key? :souhrn_dph
          root << SouhrnDPHType.new('SouhrnDPH', data[:souhrn_dph]).builder
        end
        root << build_element('Celkem', data[:celkem]) if data.key? :celkem
        if data.key? :valuty
          root << Valuty2.new('Valuty', data[:valuty]).builder
        end
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn
        root << build_element('DRada', data[:d_rada]) if data.key? :d_rada
        root << build_element('DCislo', data[:d_cislo]) if data.key? :d_cislo
        root << build_element('Vyst', data[:vyst]) if data.key? :vyst
        root << build_element('Rezim', data[:rezim]) if data.key? :rezim
        root << build_element('KorekceCen', data[:korekce_cen]) if data.key? :korekce_cen
        root << build_element('TypDokl', data[:typ_dokl]) if data.key? :typ_dokl
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