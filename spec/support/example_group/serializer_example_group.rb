# spec/support/example_group/serializer_example_group.rb
module SerializerExampleGroup
  extend ActiveSupport::Concern

  included do
    metadata[:type] = :serializer

    subject { described_class }
  end

  RSpec.configure do |config|
    config.include self,
      type: :serializer,
      example_group: { :file_path => %r(spec/serializers) }
  end
end