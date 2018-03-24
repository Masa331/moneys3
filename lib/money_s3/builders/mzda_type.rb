require 'money_s3/builders/base_builder'
require 'money_s3/builders/zamestnanec_type'
require 'money_s3/builders/nepritomnost_type'
require 'money_s3/builders/mz_priplatek'

module MoneyS3
  module Builders
    class MzdaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Mesic', data[:mesic]) if data.key? :mesic
        root << build_element('Rok', data[:rok]) if data.key? :rok
        root << build_element('PracDnu', data[:prac_dnu]) if data.key? :prac_dnu
        root << build_element('PracHod', data[:prac_hod]) if data.key? :prac_hod
        root << build_element('OdprDnu', data[:odpr_dnu]) if data.key? :odpr_dnu
        root << build_element('OdprHod', data[:odpr_hod]) if data.key? :odpr_hod
        root << build_element('OdprSvDnu', data[:odpr_sv_dnu]) if data.key? :odpr_sv_dnu
        root << build_element('OdprSvHod', data[:odpr_sv_hod]) if data.key? :odpr_sv_hod

        if data.key? :zamestnanec
          root << ZamestnanecType.new('Zamestnanec', data[:zamestnanec]).builder
        end

        if data.key? :seznam_nepritomnosti
          element = Ox::Element.new('SeznamNepritomnosti')
          data[:seznam_nepritomnosti].each { |i| element << NepritomnostType.new('Nepritomnost', i).builder }
          root << element
        end

        if data.key? :seznam_mz_priplatku
          element = Ox::Element.new('SeznamMzPriplatku')
          data[:seznam_mz_priplatku].each { |i| element << MzPriplatek.new('MzPriplatek', i).builder }
          root << element
        end

        root
      end
    end
  end
end