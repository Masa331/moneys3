require 'bundler/setup'
require 'money_s3'
require 'rspec/its'
require 'saharspec'
require 'nokogiri'

module Helpers
  def normalize_xml(string)
    parsed = Nokogiri(string)

    # Remove blank elements, eg. <name/>, <person><name/></person>
    parsed.traverse { |e| e.remove if e.blank? || e.content.empty? }

    parsed.to_xml.lines.sort
  end

  def parser_for(schema_path, parser_name, options = {})
    scaffold_schema(schema_path, options)[parser_name]
  end
  alias_method :builder_for, :parser_for
end

RSpec.configure do |config|
  config.include Helpers
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
