module MoneyS3
  module Builders
    class EETType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('EETOdesl', data[:eet_odesl], data[:eet_odesl_attributes]) if data.key? :eet_odesl
        root << build_element('ProdMisto', data[:prod_misto], data[:prod_misto_attributes]) if data.key? :prod_misto
        root << build_element('UUID', data[:uuid], data[:uuid_attributes]) if data.key? :uuid
        root << build_element('DatOdesl', data[:dat_odesl], data[:dat_odesl_attributes]) if data.key? :dat_odesl
        root << build_element('CasOdesl', data[:cas_odesl], data[:cas_odesl_attributes]) if data.key? :cas_odesl
        root << build_element('PrvniZasl', data[:prvni_zasl], data[:prvni_zasl_attributes]) if data.key? :prvni_zasl
        root << build_element('DICPopl', data[:dic_popl], data[:dic_popl_attributes]) if data.key? :dic_popl
        root << build_element('DICPover', data[:dic_pover], data[:dic_pover_attributes]) if data.key? :dic_pover
        root << build_element('Provozovna', data[:provozovna], data[:provozovna_attributes]) if data.key? :provozovna
        root << build_element('PoklZariz', data[:pokl_zariz], data[:pokl_zariz_attributes]) if data.key? :pokl_zariz
        root << build_element('PoradCis', data[:porad_cis], data[:porad_cis_attributes]) if data.key? :porad_cis
        root << build_element('DatTrzby', data[:dat_trzby], data[:dat_trzby_attributes]) if data.key? :dat_trzby
        root << build_element('CasTrzby', data[:cas_trzby], data[:cas_trzby_attributes]) if data.key? :cas_trzby
        if data.key? :castky
          root << Castky.new('Castky', data[:castky]).builder
        end
        root << build_element('Rezim', data[:rezim], data[:rezim_attributes]) if data.key? :rezim
        root << build_element('PKP', data[:pkp], data[:pkp_attributes]) if data.key? :pkp
        root << build_element('BKP', data[:bkp], data[:bkp_attributes]) if data.key? :bkp
        root << build_element('FIK', data[:fik], data[:fik_attributes]) if data.key? :fik
        root << build_element('CertPKP', data[:cert_pkp], data[:cert_pkp_attributes]) if data.key? :cert_pkp
        root << build_element('CertEET', data[:cert_eet], data[:cert_eet_attributes]) if data.key? :cert_eet
        if data.key? :vysledek_odesl
          root << VysledekOdesl.new('VysledekOdesl', data[:vysledek_odesl]).builder
        end

        root
      end
    end
  end
end