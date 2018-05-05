module MoneyS3
  module Builders
    class EETType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('EETOdesl', data[:eet_odesl]) if data.key? :eet_odesl
        root << build_element('ProdMisto', data[:prod_misto]) if data.key? :prod_misto
        root << build_element('UUID', data[:uuid]) if data.key? :uuid
        root << build_element('DatOdesl', data[:dat_odesl]) if data.key? :dat_odesl
        root << build_element('CasOdesl', data[:cas_odesl]) if data.key? :cas_odesl
        root << build_element('PrvniZasl', data[:prvni_zasl]) if data.key? :prvni_zasl
        root << build_element('DICPopl', data[:dic_popl]) if data.key? :dic_popl
        root << build_element('DICPover', data[:dic_pover]) if data.key? :dic_pover
        root << build_element('Provozovna', data[:provozovna]) if data.key? :provozovna
        root << build_element('PoklZariz', data[:pokl_zariz]) if data.key? :pokl_zariz
        root << build_element('PoradCis', data[:porad_cis]) if data.key? :porad_cis
        root << build_element('DatTrzby', data[:dat_trzby]) if data.key? :dat_trzby
        root << build_element('CasTrzby', data[:cas_trzby]) if data.key? :cas_trzby
        if data.key? :castky
          root << Castky.new('Castky', data[:castky]).builder
        end
        root << build_element('Rezim', data[:rezim]) if data.key? :rezim
        root << build_element('PKP', data[:pkp]) if data.key? :pkp
        root << build_element('BKP', data[:bkp]) if data.key? :bkp
        root << build_element('FIK', data[:fik]) if data.key? :fik
        root << build_element('CertPKP', data[:cert_pkp]) if data.key? :cert_pkp
        root << build_element('CertEET', data[:cert_eet]) if data.key? :cert_eet
        if data.key? :vysledek_odesl
          root << VysledekOdesl.new('VysledekOdesl', data[:vysledek_odesl]).builder
        end

        root
      end
    end
  end
end