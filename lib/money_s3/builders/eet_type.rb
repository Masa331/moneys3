require 'money_s3/builders/base_builder'
require 'money_s3/builders/castky'
require 'money_s3/builders/vysledek_odesl'

module MoneyS3
  module Builders
    class EETType
      include BaseBuilder

      attr_accessor :eet_odesl, :prod_misto, :uuid, :dat_odesl, :cas_odesl, :prvni_zasl, :dic_popl, :dic_pover, :provozovna, :pokl_zariz, :porad_cis, :dat_trzby, :cas_trzby, :rezim, :pkp, :bkp, :fik, :cert_pkp, :cert_eet, :castky, :vysledek_odesl

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('EETOdesl') << eet_odesl) if eet_odesl
        root << (Ox::Element.new('ProdMisto') << prod_misto) if prod_misto
        root << (Ox::Element.new('UUID') << uuid) if uuid
        root << (Ox::Element.new('DatOdesl') << dat_odesl) if dat_odesl
        root << (Ox::Element.new('CasOdesl') << cas_odesl) if cas_odesl
        root << (Ox::Element.new('PrvniZasl') << prvni_zasl) if prvni_zasl
        root << (Ox::Element.new('DICPopl') << dic_popl) if dic_popl
        root << (Ox::Element.new('DICPover') << dic_pover) if dic_pover
        root << (Ox::Element.new('Provozovna') << provozovna) if provozovna
        root << (Ox::Element.new('PoklZariz') << pokl_zariz) if pokl_zariz
        root << (Ox::Element.new('PoradCis') << porad_cis) if porad_cis
        root << (Ox::Element.new('DatTrzby') << dat_trzby) if dat_trzby
        root << (Ox::Element.new('CasTrzby') << cas_trzby) if cas_trzby
        root << (Ox::Element.new('Rezim') << rezim) if rezim
        root << (Ox::Element.new('PKP') << pkp) if pkp
        root << (Ox::Element.new('BKP') << bkp) if bkp
        root << (Ox::Element.new('FIK') << fik) if fik
        root << (Ox::Element.new('CertPKP') << cert_pkp) if cert_pkp
        root << (Ox::Element.new('CertEET') << cert_eet) if cert_eet
        root << Castky.new(castky, 'Castky').builder if castky
        root << VysledekOdesl.new(vysledek_odesl, 'VysledekOdesl').builder if vysledek_odesl

        root
      end
    end
  end
end