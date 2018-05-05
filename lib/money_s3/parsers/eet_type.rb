module MoneyS3
  module Parsers
    class EETType
      include ParserCore::BaseParser

      def eet_odesl
        at 'EETOdesl'
      end

      def prod_misto
        at 'ProdMisto'
      end

      def uuid
        at 'UUID'
      end

      def dat_odesl
        at 'DatOdesl'
      end

      def cas_odesl
        at 'CasOdesl'
      end

      def prvni_zasl
        at 'PrvniZasl'
      end

      def dic_popl
        at 'DICPopl'
      end

      def dic_pover
        at 'DICPover'
      end

      def provozovna
        at 'Provozovna'
      end

      def pokl_zariz
        at 'PoklZariz'
      end

      def porad_cis
        at 'PoradCis'
      end

      def dat_trzby
        at 'DatTrzby'
      end

      def cas_trzby
        at 'CasTrzby'
      end

      def castky
        submodel_at(Castky, 'Castky')
      end

      def rezim
        at 'Rezim'
      end

      def pkp
        at 'PKP'
      end

      def bkp
        at 'BKP'
      end

      def fik
        at 'FIK'
      end

      def cert_pkp
        at 'CertPKP'
      end

      def cert_eet
        at 'CertEET'
      end

      def vysledek_odesl
        submodel_at(VysledekOdesl, 'VysledekOdesl')
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:eet_odesl] = eet_odesl if has? 'EETOdesl'
        hash[:prod_misto] = prod_misto if has? 'ProdMisto'
        hash[:uuid] = uuid if has? 'UUID'
        hash[:dat_odesl] = dat_odesl if has? 'DatOdesl'
        hash[:cas_odesl] = cas_odesl if has? 'CasOdesl'
        hash[:prvni_zasl] = prvni_zasl if has? 'PrvniZasl'
        hash[:dic_popl] = dic_popl if has? 'DICPopl'
        hash[:dic_pover] = dic_pover if has? 'DICPover'
        hash[:provozovna] = provozovna if has? 'Provozovna'
        hash[:pokl_zariz] = pokl_zariz if has? 'PoklZariz'
        hash[:porad_cis] = porad_cis if has? 'PoradCis'
        hash[:dat_trzby] = dat_trzby if has? 'DatTrzby'
        hash[:cas_trzby] = cas_trzby if has? 'CasTrzby'
        hash[:castky] = castky.to_h_with_attrs if has? 'Castky'
        hash[:rezim] = rezim if has? 'Rezim'
        hash[:pkp] = pkp if has? 'PKP'
        hash[:bkp] = bkp if has? 'BKP'
        hash[:fik] = fik if has? 'FIK'
        hash[:cert_pkp] = cert_pkp if has? 'CertPKP'
        hash[:cert_eet] = cert_eet if has? 'CertEET'
        hash[:vysledek_odesl] = vysledek_odesl.to_h_with_attrs if has? 'VysledekOdesl'

        hash
      end
    end
  end
end