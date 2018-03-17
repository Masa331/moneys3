require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class NepritomnostType
      include BaseBuilder

      attr_accessor :typ, :zacatek, :konec, :dat_porodu, :odp_hod_z, :odp_hod_k, :kal_dnu, :prac_dnu, :hodin, :svat_dnu, :svat_hod, :pokrac_nepr, :nahr_mzdy, :prepoc_dny, :pozn

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Typ') << typ) if typ
        root << (Ox::Element.new('Zacatek') << zacatek) if zacatek
        root << (Ox::Element.new('Konec') << konec) if konec
        root << (Ox::Element.new('DatPorodu') << dat_porodu) if dat_porodu
        root << (Ox::Element.new('OdpHodZ') << odp_hod_z) if odp_hod_z
        root << (Ox::Element.new('OdpHodK') << odp_hod_k) if odp_hod_k
        root << (Ox::Element.new('KalDnu') << kal_dnu) if kal_dnu
        root << (Ox::Element.new('PracDnu') << prac_dnu) if prac_dnu
        root << (Ox::Element.new('Hodin') << hodin) if hodin
        root << (Ox::Element.new('SvatDnu') << svat_dnu) if svat_dnu
        root << (Ox::Element.new('SvatHod') << svat_hod) if svat_hod
        root << (Ox::Element.new('PokracNepr') << pokrac_nepr) if pokrac_nepr
        root << (Ox::Element.new('NahrMzdy') << nahr_mzdy) if nahr_mzdy
        root << (Ox::Element.new('PrepocDny') << prepoc_dny) if prepoc_dny
        root << (Ox::Element.new('Pozn') << pozn) if pozn

        root
      end
    end
  end
end