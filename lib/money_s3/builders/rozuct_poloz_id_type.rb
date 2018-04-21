module MoneyS3
  module Builders
    class RozuctPolozIDType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('UcMD', data[:uc_md]) if data.key? :uc_md
        root << build_element('UcD', data[:uc_d]) if data.key? :uc_d
        root << build_element('Castka', data[:castka]) if data.key? :castka
        root << build_element('Stred', data[:stred]) if data.key? :stred
        root << build_element('Zakazka', data[:zakazka]) if data.key? :zakazka
        root << build_element('Cinnost', data[:cinnost]) if data.key? :cinnost
        root << build_element('ParSym', data[:par_sym]) if data.key? :par_sym
        root << build_element('ParICO', data[:par_ico]) if data.key? :par_ico
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn
        root << build_element('TypCena', data[:typ_cena]) if data.key? :typ_cena
        root << build_element('SazbaDPH', data[:sazba_dph]) if data.key? :sazba_dph

        root
      end
    end
  end
end