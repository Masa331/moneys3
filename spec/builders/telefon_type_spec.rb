require 'spec_helper'
require 'money_s3/with_attributes'

RSpec.describe MoneyS3::Builders::MoneyData do
  describe '::to_xml' do
    it 'outputs proper xml' do
      xml = MoneyS3::Builders::TelefonType.new('Tel', { cislo: '123' }).to_xml.strip

      expect(xml).to eq_multiline(%{
        |<?xml version="1.0"?>
        |<Tel>
        |  <Cislo>123</Cislo>
        |</Tel> })
    end

    it 'outputs proper xml with attributes' do
      str = MoneyS3::WithAttributes.new('123')
      str.attributes = { type: 'cellphone' }

      hash = MoneyS3::WithAttributes.new({ cislo: str })
      hash.attributes = { version:  '1', license: 'ab123' }
      xml = MoneyS3::Builders::TelefonType.new('Tel', hash).to_xml.strip

      expect(xml).to eq_multiline(%{
        |<?xml version="1.0"?>
        |<Tel version="1" license="ab123">
        |  <Cislo type="cellphone">123</Cislo>
        |</Tel> })
    end
  end
end
