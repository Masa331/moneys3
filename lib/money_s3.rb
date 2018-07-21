require 'ox'
require 'parser_core'

require 'money_s3/requires'
require 'money_s3/parsers/money_data'
require 'money_s3/builders/money_data'

module MoneyS3
  def self.parse(raw)
    parsed = Ox.load(raw, skip: :skip_none)
    content = parsed.locate('MoneyData').first

    Parsers::MoneyData.new(content)
  end

  def self.build(data, options = {})
    Builders::MoneyData.new('MoneyData', data, options).to_xml
  end
end
