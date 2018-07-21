module MoneyS3
  module Builders
    class RozuctPolozUDType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('UcMD', data[:uc_md], data[:uc_md_attributes]) if data.key? :uc_md
        root << build_element('UcD', data[:uc_d], data[:uc_d_attributes]) if data.key? :uc_d
        root << build_element('Pohyb', data[:pohyb], data[:pohyb_attributes]) if data.key? :pohyb
        root << build_element('Castka', data[:castka], data[:castka_attributes]) if data.key? :castka
        root << build_element('Stred', data[:stred], data[:stred_attributes]) if data.key? :stred
        root << build_element('Zakazka', data[:zakazka], data[:zakazka_attributes]) if data.key? :zakazka
        root << build_element('Cinnost', data[:cinnost], data[:cinnost_attributes]) if data.key? :cinnost
        root << build_element('ParSym', data[:par_sym], data[:par_sym_attributes]) if data.key? :par_sym
        root << build_element('VarSym', data[:var_sym], data[:var_sym_attributes]) if data.key? :var_sym
        root << build_element('ParICO', data[:par_ico], data[:par_ico_attributes]) if data.key? :par_ico
        root << build_element('ICO', data[:ico], data[:ico_attributes]) if data.key? :ico
        if data.key? :adresa
          root << FirmaType.new('Adresa', data[:adresa]).builder
        end
        root << build_element('Pozn', data[:pozn], data[:pozn_attributes]) if data.key? :pozn
        root << build_element('TypCena', data[:typ_cena], data[:typ_cena_attributes]) if data.key? :typ_cena
        root << build_element('SazbaDPH', data[:sazba_dph], data[:sazba_dph_attributes]) if data.key? :sazba_dph

        root
      end
    end
  end
end