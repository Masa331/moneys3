require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class BankSpojeniType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Ucet', data[:ucet]) if data.key? :ucet
        root << build_element('KodBanky', data[:kod_banky]) if data.key? :kod_banky
        root << build_element('Mena', data[:mena]) if data.key? :mena
        root << build_element('Ucel', data[:ucel]) if data.key? :ucel

        root
      end
    end
  end
end