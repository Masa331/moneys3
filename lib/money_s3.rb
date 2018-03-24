require 'ox'
require 'money_s3/parsers/money_data'
require 'money_s3/builders/money_data'

module MoneyS3
  def self.parse(raw)
    hash = Ox.load(raw, mode: :hash)

    if hash.key? :MoneyData
      content = hash[:MoneyData]

      if content.is_a? Array
        attributes = content.shift
        raw = content.inject({}) { |memo, member| memo.merge(member) }
      else
        attributes = {}
        raw = content
      end

      Parsers::MoneyData.new(raw, attributes)
    end
  end

  def self.build(data)
    Builders::MoneyData.new(data, 'MoneyData').to_xml
  end
end
