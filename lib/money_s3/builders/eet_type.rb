require 'money_s3/builders/base_builder'
require 'money_s3/builders/castky'
require 'money_s3/builders/vysledek_odesl'

module MoneyS3
  module Builders
    class EETType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :eet_odesl
          element = Ox::Element.new('EETOdesl')
          element << attributes[:eet_odesl] if attributes[:eet_odesl]
          root << element
        end

        if attributes.key? :prod_misto
          element = Ox::Element.new('ProdMisto')
          element << attributes[:prod_misto] if attributes[:prod_misto]
          root << element
        end

        if attributes.key? :uuid
          element = Ox::Element.new('UUID')
          element << attributes[:uuid] if attributes[:uuid]
          root << element
        end

        if attributes.key? :dat_odesl
          element = Ox::Element.new('DatOdesl')
          element << attributes[:dat_odesl] if attributes[:dat_odesl]
          root << element
        end

        if attributes.key? :cas_odesl
          element = Ox::Element.new('CasOdesl')
          element << attributes[:cas_odesl] if attributes[:cas_odesl]
          root << element
        end

        if attributes.key? :prvni_zasl
          element = Ox::Element.new('PrvniZasl')
          element << attributes[:prvni_zasl] if attributes[:prvni_zasl]
          root << element
        end

        if attributes.key? :dic_popl
          element = Ox::Element.new('DICPopl')
          element << attributes[:dic_popl] if attributes[:dic_popl]
          root << element
        end

        if attributes.key? :dic_pover
          element = Ox::Element.new('DICPover')
          element << attributes[:dic_pover] if attributes[:dic_pover]
          root << element
        end

        if attributes.key? :provozovna
          element = Ox::Element.new('Provozovna')
          element << attributes[:provozovna] if attributes[:provozovna]
          root << element
        end

        if attributes.key? :pokl_zariz
          element = Ox::Element.new('PoklZariz')
          element << attributes[:pokl_zariz] if attributes[:pokl_zariz]
          root << element
        end

        if attributes.key? :porad_cis
          element = Ox::Element.new('PoradCis')
          element << attributes[:porad_cis] if attributes[:porad_cis]
          root << element
        end

        if attributes.key? :dat_trzby
          element = Ox::Element.new('DatTrzby')
          element << attributes[:dat_trzby] if attributes[:dat_trzby]
          root << element
        end

        if attributes.key? :cas_trzby
          element = Ox::Element.new('CasTrzby')
          element << attributes[:cas_trzby] if attributes[:cas_trzby]
          root << element
        end

        if attributes.key? :rezim
          element = Ox::Element.new('Rezim')
          element << attributes[:rezim] if attributes[:rezim]
          root << element
        end

        if attributes.key? :pkp
          element = Ox::Element.new('PKP')
          element << attributes[:pkp] if attributes[:pkp]
          root << element
        end

        if attributes.key? :bkp
          element = Ox::Element.new('BKP')
          element << attributes[:bkp] if attributes[:bkp]
          root << element
        end

        if attributes.key? :fik
          element = Ox::Element.new('FIK')
          element << attributes[:fik] if attributes[:fik]
          root << element
        end

        if attributes.key? :cert_pkp
          element = Ox::Element.new('CertPKP')
          element << attributes[:cert_pkp] if attributes[:cert_pkp]
          root << element
        end

        if attributes.key? :cert_eet
          element = Ox::Element.new('CertEET')
          element << attributes[:cert_eet] if attributes[:cert_eet]
          root << element
        end

        if attributes.key? :castky
          root << Castky.new(attributes[:castky], 'Castky').builder
        end

        if attributes.key? :vysledek_odesl
          root << VysledekOdesl.new(attributes[:vysledek_odesl], 'VysledekOdesl').builder
        end

        root
      end
    end
  end
end