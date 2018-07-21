module MoneyS3
  module Parsers
    class EETType
      include ParserCore::BaseParser

      def eet_odesl
        at 'EETOdesl'
      end

      def eet_odesl_attributes
        attributes_at 'EETOdesl'
      end

      def prod_misto
        at 'ProdMisto'
      end

      def prod_misto_attributes
        attributes_at 'ProdMisto'
      end

      def uuid
        at 'UUID'
      end

      def uuid_attributes
        attributes_at 'UUID'
      end

      def dat_odesl
        at 'DatOdesl'
      end

      def dat_odesl_attributes
        attributes_at 'DatOdesl'
      end

      def cas_odesl
        at 'CasOdesl'
      end

      def cas_odesl_attributes
        attributes_at 'CasOdesl'
      end

      def prvni_zasl
        at 'PrvniZasl'
      end

      def prvni_zasl_attributes
        attributes_at 'PrvniZasl'
      end

      def dic_popl
        at 'DICPopl'
      end

      def dic_popl_attributes
        attributes_at 'DICPopl'
      end

      def dic_pover
        at 'DICPover'
      end

      def dic_pover_attributes
        attributes_at 'DICPover'
      end

      def provozovna
        at 'Provozovna'
      end

      def provozovna_attributes
        attributes_at 'Provozovna'
      end

      def pokl_zariz
        at 'PoklZariz'
      end

      def pokl_zariz_attributes
        attributes_at 'PoklZariz'
      end

      def porad_cis
        at 'PoradCis'
      end

      def porad_cis_attributes
        attributes_at 'PoradCis'
      end

      def dat_trzby
        at 'DatTrzby'
      end

      def dat_trzby_attributes
        attributes_at 'DatTrzby'
      end

      def cas_trzby
        at 'CasTrzby'
      end

      def cas_trzby_attributes
        attributes_at 'CasTrzby'
      end

      def castky
        submodel_at(Castky, 'Castky')
      end

      def rezim
        at 'Rezim'
      end

      def rezim_attributes
        attributes_at 'Rezim'
      end

      def pkp
        at 'PKP'
      end

      def pkp_attributes
        attributes_at 'PKP'
      end

      def bkp
        at 'BKP'
      end

      def bkp_attributes
        attributes_at 'BKP'
      end

      def fik
        at 'FIK'
      end

      def fik_attributes
        attributes_at 'FIK'
      end

      def cert_pkp
        at 'CertPKP'
      end

      def cert_pkp_attributes
        attributes_at 'CertPKP'
      end

      def cert_eet
        at 'CertEET'
      end

      def cert_eet_attributes
        attributes_at 'CertEET'
      end

      def vysledek_odesl
        submodel_at(VysledekOdesl, 'VysledekOdesl')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:eet_odesl] = eet_odesl if has? 'EETOdesl'
        hash[:eet_odesl_attributes] = eet_odesl_attributes if has? 'EETOdesl'
        hash[:prod_misto] = prod_misto if has? 'ProdMisto'
        hash[:prod_misto_attributes] = prod_misto_attributes if has? 'ProdMisto'
        hash[:uuid] = uuid if has? 'UUID'
        hash[:uuid_attributes] = uuid_attributes if has? 'UUID'
        hash[:dat_odesl] = dat_odesl if has? 'DatOdesl'
        hash[:dat_odesl_attributes] = dat_odesl_attributes if has? 'DatOdesl'
        hash[:cas_odesl] = cas_odesl if has? 'CasOdesl'
        hash[:cas_odesl_attributes] = cas_odesl_attributes if has? 'CasOdesl'
        hash[:prvni_zasl] = prvni_zasl if has? 'PrvniZasl'
        hash[:prvni_zasl_attributes] = prvni_zasl_attributes if has? 'PrvniZasl'
        hash[:dic_popl] = dic_popl if has? 'DICPopl'
        hash[:dic_popl_attributes] = dic_popl_attributes if has? 'DICPopl'
        hash[:dic_pover] = dic_pover if has? 'DICPover'
        hash[:dic_pover_attributes] = dic_pover_attributes if has? 'DICPover'
        hash[:provozovna] = provozovna if has? 'Provozovna'
        hash[:provozovna_attributes] = provozovna_attributes if has? 'Provozovna'
        hash[:pokl_zariz] = pokl_zariz if has? 'PoklZariz'
        hash[:pokl_zariz_attributes] = pokl_zariz_attributes if has? 'PoklZariz'
        hash[:porad_cis] = porad_cis if has? 'PoradCis'
        hash[:porad_cis_attributes] = porad_cis_attributes if has? 'PoradCis'
        hash[:dat_trzby] = dat_trzby if has? 'DatTrzby'
        hash[:dat_trzby_attributes] = dat_trzby_attributes if has? 'DatTrzby'
        hash[:cas_trzby] = cas_trzby if has? 'CasTrzby'
        hash[:cas_trzby_attributes] = cas_trzby_attributes if has? 'CasTrzby'
        hash[:castky] = castky.to_h if has? 'Castky'
        hash[:rezim] = rezim if has? 'Rezim'
        hash[:rezim_attributes] = rezim_attributes if has? 'Rezim'
        hash[:pkp] = pkp if has? 'PKP'
        hash[:pkp_attributes] = pkp_attributes if has? 'PKP'
        hash[:bkp] = bkp if has? 'BKP'
        hash[:bkp_attributes] = bkp_attributes if has? 'BKP'
        hash[:fik] = fik if has? 'FIK'
        hash[:fik_attributes] = fik_attributes if has? 'FIK'
        hash[:cert_pkp] = cert_pkp if has? 'CertPKP'
        hash[:cert_pkp_attributes] = cert_pkp_attributes if has? 'CertPKP'
        hash[:cert_eet] = cert_eet if has? 'CertEET'
        hash[:cert_eet_attributes] = cert_eet_attributes if has? 'CertEET'
        hash[:vysledek_odesl] = vysledek_odesl.to_h if has? 'VysledekOdesl'

        hash
      end
    end
  end
end