require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/castky'
require 'money_s3/parsers/vysledek_odesl'

module MoneyS3
  module Parsers
    class EETType
      include BaseParser

      def eet_odesl
        at :EETOdesl
      end

      def prod_misto
        at :ProdMisto
      end

      def uuid
        at :UUID
      end

      def dat_odesl
        at :DatOdesl
      end

      def cas_odesl
        at :CasOdesl
      end

      def prvni_zasl
        at :PrvniZasl
      end

      def dic_popl
        at :DICPopl
      end

      def dic_pover
        at :DICPover
      end

      def provozovna
        at :Provozovna
      end

      def pokl_zariz
        at :PoklZariz
      end

      def porad_cis
        at :PoradCis
      end

      def dat_trzby
        at :DatTrzby
      end

      def cas_trzby
        at :CasTrzby
      end

      def rezim
        at :Rezim
      end

      def pkp
        at :PKP
      end

      def bkp
        at :BKP
      end

      def fik
        at :FIK
      end

      def cert_pkp
        at :CertPKP
      end

      def cert_eet
        at :CertEET
      end

      def castky
        submodel_at(Castky, :Castky)
      end

      def vysledek_odesl
        submodel_at(VysledekOdesl, :VysledekOdesl)
      end

      def to_h
        hash = {}

        hash[:eet_odesl] = eet_odesl if raw.key? :EETOdesl
        hash[:prod_misto] = prod_misto if raw.key? :ProdMisto
        hash[:uuid] = uuid if raw.key? :UUID
        hash[:dat_odesl] = dat_odesl if raw.key? :DatOdesl
        hash[:cas_odesl] = cas_odesl if raw.key? :CasOdesl
        hash[:prvni_zasl] = prvni_zasl if raw.key? :PrvniZasl
        hash[:dic_popl] = dic_popl if raw.key? :DICPopl
        hash[:dic_pover] = dic_pover if raw.key? :DICPover
        hash[:provozovna] = provozovna if raw.key? :Provozovna
        hash[:pokl_zariz] = pokl_zariz if raw.key? :PoklZariz
        hash[:porad_cis] = porad_cis if raw.key? :PoradCis
        hash[:dat_trzby] = dat_trzby if raw.key? :DatTrzby
        hash[:cas_trzby] = cas_trzby if raw.key? :CasTrzby
        hash[:rezim] = rezim if raw.key? :Rezim
        hash[:pkp] = pkp if raw.key? :PKP
        hash[:bkp] = bkp if raw.key? :BKP
        hash[:fik] = fik if raw.key? :FIK
        hash[:cert_pkp] = cert_pkp if raw.key? :CertPKP
        hash[:cert_eet] = cert_eet if raw.key? :CertEET
        hash[:castky] = castky.to_h if raw.key? :Castky
        hash[:vysledek_odesl] = vysledek_odesl.to_h if raw.key? :VysledekOdesl

        hash
      end
    end
  end
end