require 'spec_helper'

RSpec.describe MoneyS3::Builders::MoneyData do
  it 'can process output from MoneyS3::Parsers::TelefonType' do
    raw = File.read('./spec/fixtures/telefone_type.xml')
    ox = Ox.load(raw).locate('Tel').first
    parsed = MoneyS3::Parsers::TelefonType.new(ox)

    xml = MoneyS3::Builders::TelefonType.new('Tel', parsed.to_h).to_xml.strip

    expect(xml).to eq_multiline(%{
      |<?xml version="1.0"?>
      |<Tel version="1">
      |  <Pred>+420</Pred>
      |  <Cislo type="cellphone">111222333</Cislo>
      |  <Klap/>
      |</Tel> })
  end

  describe '::to_xml' do
    it 'outputs xml string' do
      xml = MoneyS3::Builders::TelefonType.new('Tel', { cislo: '123' }).to_xml.strip

      expect(xml).to eq_multiline(%{
        |<?xml version="1.0"?>
        |<Tel>
        |  <Cislo>123</Cislo>
        |</Tel> })
    end

    it 'outputs xml string with attributes' do
      data = { cislo: '123',
               cislo_attributes: { type: 'cellphone' },
               attributes: { version:  '1', license: 'ab123' } }

      xml = MoneyS3::Builders::TelefonType.new('Tel', data).to_xml.strip

      expect(xml).to eq_multiline(%{
        |<?xml version="1.0"?>
        |<Tel version="1" license="ab123">
        |  <Cislo type="cellphone">123</Cislo>
        |</Tel> })
    end
  end
end
